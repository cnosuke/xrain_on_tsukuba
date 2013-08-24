toDouble = (arg) ->
    arg = arg + ""
    return (if arg.length == 1 then "0" else "") + arg

$ ->
    date = new Date()
    fulldate = toDouble(date.getFullYear()) + toDouble(date.getMonth()+1) + toDouble(date.getDate())
    fulltime = toDouble(date.getHours()) + toDouble(date.getMinutes()-1)
    url = "http://www.river.go.jp/xbandradar/rdimg/kanto01/#{fulldate}/0000/kanto01#{fulldate}T#{fulltime}_detail.png"

    #url = "images/kanto0120130823T1642_detail.png"
    console.log url
    $('#dmap').attr('src',url)

    gMapInitialize()



