4658<!><!>0<!>4250<!>0<!>Павел Дуров в первые на видео&#33;=))<!><div class="video_external_inline">
  <div class="video_box_wrap" style="width: 320px; height: 240px; overflow: hidden;">
<iframe id="video_player" preventhide="1" onmouseover="if (cur && cur.incViews) cur.incViews();" type="text/html" width="320" height="240" src="http://www.youtube.com/embed/3_e9tyURZ7Q?autoplay=0&autohide=1&wmode=opaque&showinfo=0" frameborder="0">
</iframe>
</div>
</div><!>cur.incViews = function() {literal}{
  if (cur.videoInc) {
    return;
  }
  cur.videoInc = setTimeout(function() {
    cur.videoInc = 'finished';
    var oid = 40297585;
    if (oid) {
      ajax.post("al_video.php", {act:'inc_view_counter', oid:oid, vid:161869339, hash:'bfd8c0ecea9e71c28f3788fab2c34ef8'});
    }
  }, 5000);
  cur.destroy.push(function () {
    if (cur.videoInc && cur.videoInc != 'finished') {
      clearTimeout(cur.videoInc);
    }
  });
}{/literal}<!><!json>{literal}{"mvData":{"title":"Павел Дуров в первые на видео&#33;=))","oid":40297585,"vid":161869339,"videoRaw":"40297585_161869339","hash":"50058cb6cf63bb1880","likeHash":"bfb26506d07bfe14eb","commshown":null,"commcount":null,"liked":true,"likes":9,"duration":2440}}{/literal}