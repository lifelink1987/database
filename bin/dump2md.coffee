#!/usr/bin/env coffee

fs = require 'fs-extra'
path = require 'path'
_ = require 'lodash'
mysql = require 'mysql'
yml = require 'js-yaml'
moment = require 'moment'
marked = require 'marked'
_.mixin
  compactObject: (o) ->
    clone = _.cloneDeep o
    _.each clone, (v, k) ->
      delete clone[k]  unless v?
      clone[k] = _.compactObject v  if _.isPlainObject v
    clone

conn = undefined
connect = (opts) ->
  conn = mysql.createConnection opts
  conn.connect()
  conn

query = (stmt, resultFun) ->
  q = conn.query stmt
  q.on 'error', () -> console.log arguments
  q.on 'fields', _.noop
  q.on 'result', resultFun
  q.on 'end', () ->
    console.log ''
    conn.destroy()

toDate = (dateString) ->
  d = moment(dateString).format 'YYYY-MM-DD'

addSection = (md, heading, content) ->
  md.concat [
    type: 'heading'
    depth: 1
    text: heading
  ,
    type: 'paragraph'
    text: content
  ]

class Renderer
  constructor: (@options) ->
  _code: ({code, lang, escaped}) -> "```#{lang}\n#{code}\n"
  _tasklist: ({text}) ->
  _taskitem: ({text, checked, disabled, i}) ->
  -blockquote: ({quote}) ->
  -html: ({html}) ->
  heading: ({text, depth}) ->
    result = Array(depth + 1).join '#'
    result = "\n#{result} #{text}\n"
  hr: () -> "---\n"
  _list: ({body, ordered}) ->
  _listitem: ({text}) ->
  paragraph: ({text}) -> "\n#{text}\n"
  _table: ({header, body}) ->
  _tablerow: ({content}) ->
  _tablecell: ({content, flags}) ->
  -strong: ({text}) -> "**#{text}**"
  _em: ({text}) ->
  _codespan: ({text}) ->
  br: () -> "\n"
  _del: (text) -> "~#{text}~"
  _link: ({href, title, text}) ->
    "[#{text}](#{_.compact([href, title]).join(' ')})"
  _image: ({href, title, text}) ->
  default: (item) -> JSON.stringify item

  render: (ast) ->
    result = ""
    for item in ast
      fun = @[item.type] or @default
      result += fun item
    result

module.exports = {
  fs
  path
  mysql
  _
  yml
  moment
  marked
  connect
  query
  toDate
  addSection
  Renderer
}
