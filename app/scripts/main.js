(function() {
  var toDouble;

  toDouble = function(arg) {
    arg = arg + "";
    return (arg.length === 1 ? "0" : "") + arg;
  };

  $(function() {
    var date, fulldate, fulltime, url;
    date = new Date();
    fulldate = toDouble(date.getFullYear()) + toDouble(date.getMonth() + 1) + toDouble(date.getDate());
    fulltime = toDouble(date.getHours()) + toDouble(date.getMinutes() - 1);
    url = "http://www.river.go.jp/xbandradar/rdimg/kanto01/" + fulldate + "/0000/kanto01" + fulldate + "T" + fulltime + "_detail.png";
    console.log(url);
    $('#dmap').attr('src', url);
    return gMapInitialize();
  });

}).call(this);
