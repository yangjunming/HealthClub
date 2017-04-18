/**
 * Created by KMY on 2017/1/20.
 */

//默认1rem=10px,当设备更换时,会根据设备宽度自动计算出rem和px的换算比例
(function (doc, win) {
    var docEl = doc.documentElement,
        resizeEvt = 'orientationchange' in window ? 'orientationchange' : 'resize',
        recalc = function () {
            var clientWidth = docEl.clientWidth;
            if (!clientWidth) return;
            docEl.style.fontSize = 10 * (clientWidth / 320) + 'px';
        };
    if (!doc.addEventListener) return;
    win.addEventListener(resizeEvt, recalc, false);
    doc.addEventListener('DOMContentLoaded', recalc, false);
})(document, window);

$(function() {
    //滑动
    $(".nav-tog").click(function(){
        $(".navmobile").slideToggle("slow");
    });
    //切换
    $(".tab li").click(function () {
        $(this).addClass("on").siblings().removeClass("on");
        $(".tabcont>div").eq($(this).index(".tab li")).addClass("disblock").siblings(".tabcont>div").removeClass("disblock");
        $(".tabcont").scrollTop(0);
    });
})
//发送邮件
function getMailtoUrl() {
    var args = [];
    if (typeof subject !== 'undefined') {
        args.push('subject=' + encodeURIComponent('主题内容'));
    }
    var name = $("input[name='name']").val();
    var iphone = $("input[name='iphone']").val();
    var message = $("input[name='message']").val();
    var body = name +"\n"+iphone +"\n"+ message
    if (typeof body !== 'undefined') {
        args.push('body=' + encodeURIComponent(body))
    }

    var url = 'mailto:' + encodeURIComponent('support@ginspa.com');
    if (args.length > 0) {
        url += '?' + args.join('&');
    }
    console.log(url);
    window.location = url;
    return url;

}





