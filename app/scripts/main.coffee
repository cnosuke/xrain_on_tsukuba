toDouble = (arg) ->
    arg = arg + ""
    return (if arg.length == 1 then "0" else "") + arg

sixTimeWindow = (d) ->
    h = d.getHours()
    if h < 6
      r = 0
    else if h < 12
      r = 6
    else if h < 18
      r = 12
    else
      r = 18

    return toDouble(r) + "00"

$ ->
    date = new Date()
    fulldate = toDouble(date.getFullYear()) + toDouble(date.getMonth()+1) + toDouble(date.getDate())
    fulltime = toDouble(date.getHours()) + toDouble(date.getMinutes()-1)
    url = "http://www.river.go.jp/xbandradar/rdimg/kanto01/#{fulldate}/#{sixTimeWindow(date)}/kanto01#{fulldate}T#{fulltime}_detail.png"

    #url = "images/kanto0120130823T1642_detail.png"
    console.log url
    $('#dmap').attr('src',url)

    gMapInitialize()



