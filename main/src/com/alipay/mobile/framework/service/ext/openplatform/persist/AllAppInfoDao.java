package com.alipay.mobile.framework.service.ext.openplatform.persist;

import com.alipay.mobile.framework.service.ext.openplatform.AppUtils;
import com.alipay.mobile.framework.service.ext.openplatform.domain.AppEntity;
import com.alipay.mobile.framework.service.ext.openplatform.domain.MyAppEntity;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

public class AllAppInfoDao
{
  public List<AppEntity> getAppEntities()
  {
    ArrayList localArrayList = new ArrayList();
    AppEntity localAppEntity1 = new AppEntity(true, "20000032", "支付宝打造的余额理财服务。通过余额宝,用户不仅能够得到收益,还能随时消费支付和转出,像使用支付宝余额一样方便。", true, "", "app_fund", "nativeApp", "余额宝", 0, "", "", "1.0.0.0");
    localAppEntity1.setRank(500);
    localArrayList.add(localAppEntity1);
    AppEntity localAppEntity2 = new AppEntity(true, "09999988", "随时随地，免费转账汇款，最高每天转账5万：\n转账到支付宝账户，瞬间到账；\n跨行转账到银行卡账户，最快十分钟到账；\n不知道对方账户，亦能通过手机号便捷转账。", true, "", "app_transfer", "nativeApp", "转账", 0, "", "", "0");
    localAppEntity2.setRank(490);
    localArrayList.add(localAppEntity2);
    AppEntity localAppEntity3 = new AppEntity(true, "09999999", "支持所有主流银行信用卡还款，当天到帐、 0服务费；\n还可以设置还款提醒，还款更轻松。", true, "", "app_creditcard", "nativeApp", "信用卡还款", 0, "", "", "0");
    localAppEntity3.setRank(480);
    localArrayList.add(localAppEntity3);
    AppEntity localAppEntity4 = new AppEntity(true, "20000066", "", true, "", "app_aapay", "nativeApp", "AA收款", 0, "", "", "0");
    localAppEntity4.setRank(470);
    localArrayList.add(localAppEntity4);
    AppEntity localAppEntity5 = new AppEntity(true, "20000123", "", true, "", "app_payee", "nativeApp", "收款", 0, "", "", "0");
    localAppEntity5.setRank(470);
    localArrayList.add(localAppEntity5);
    AppEntity localAppEntity6 = new AppEntity(true, "10000014", "", true, "", "app_facepay", "nativeApp", "当面付", 0, "", "", "0");
    localAppEntity6.setRank(460);
    localArrayList.add(localAppEntity6);
    AppEntity localAppEntity7 = new AppEntity(true, "09999976", "水电煤缴费是一项免费缴纳水、电、燃气费的应用（商户代缴除外），同时提供免费的账单订阅、缴费提醒、绑定代扣等增值服务。让您从此足不出户，享受一站式缴费服务！", true, "", "app_publicfee", "nativeApp", "水电煤", 0, "", "", "0");
    localAppEntity7.setRank(450);
    localArrayList.add(localAppEntity7);
    AppEntity localAppEntity8 = new AppEntity(true, "10000003", "手机话费实时充值，最低98折，移动、联通、电信，不管你在哪里，不管你要充多少，都可以随时随地为自己和朋友的手机充值，话费快速到帐，让你的手机永不停机！", true, "", "app_phonecharge", "nativeApp", "手机充值", 0, "话费随时充，9.8折起。", "", "0");
    localAppEntity8.setRank(440);
    localArrayList.add(localAppEntity8);
    AppEntity localAppEntity9 = new AppEntity(true, "09999990", "淘宝网淘宝彩票官方出品，服务广大彩民的一款彩票购买、开奖查询、订单查询的一站式彩票客户端。\n简单：投注简单、功能强大、玩法丰富；\n安全：淘宝账号登录、支付宝担保付款；\n便捷：跟主站互通，淘宝彩票订单查询便捷；", true, "09999990.amr", "app_lottery", "webApp", "彩票", 0, "", "", "3.7.1.4");
    localAppEntity9.setRank(430);
    localArrayList.add(localAppEntity9);
    AppEntity localAppEntity10 = new AppEntity(true, "20000094", "", true, "", "app_plane", "expApp", "机票", 0, "", "", "0");
    localAppEntity10.setRank(420);
    localArrayList.add(localAppEntity10);
    AppEntity localAppEntity11 = new AppEntity(true, "20000074", "打车服务", true, "20000074.amr", "app_taxi", "webApp", "快的打车", 0, "", "", "1.0.0.0");
    localAppEntity11.setRank(410);
    localArrayList.add(localAppEntity11);
    AppEntity localAppEntity12 = new AppEntity(true, "2013082800000932", "随时随地乐享购物", true, "http://download.taobaocdn.com/freedom/15818/andriod/taobao_alipay.apk", "app_taobao", "independantApp", "淘宝", 12574, "", "", "2.1.1", "com.taobao.taobao");
    localAppEntity12.setRank(400);
    localArrayList.add(localAppEntity12);
    AppEntity localAppEntity13 = new AppEntity(true, "2013062600000474", "足不出户就能完成充值", true, "http://mobileapp.stable.alipay.net/downloadfunction/alipay.mobile/2013062600000474/1_0_0_9/1394270008943_campuscard-build-raw.jar", "app_schoolecard", "innerApp", "校园一卡通", 2048, "", "", "1.0.0.1");
    localAppEntity13.setRank(390);
    localArrayList.add(localAppEntity13);
    AppEntity localAppEntity14 = new AppEntity(true, "10000006", "卡种齐全，迅速到账", true, "", "app_game", "nativeApp", "游戏点卡", 0, "", "", "0");
    localAppEntity14.setRank(380);
    localArrayList.add(localAppEntity14);
    AppEntity localAppEntity15 = new AppEntity(true, "11000002", "壹基金捐款是 深圳壹基金公益基金会 倡导的“每人每天1点爱”公益互动模式，即“每人每天1元钱，成就爱的365天”。\n善款用于支持壹基金执行的灾害救助、儿童关怀和公益人才培养三大领域的公益项目。您可以自行决定每个月定期捐款的金额，也可以随时停止付款。", true, "11000002.amr", "app_onefund", "webApp", "壹基金月捐", 100, "", "", "1.1.1.1");
    localAppEntity15.setRank(370);
    localArrayList.add(localAppEntity15);
    AppEntity localAppEntity16 = new AppEntity(true, "20000046", "查询并跟踪快递，快递状态通知；支持扫描单号查询。", true, "", "app_logistic", "innerApp", "我的快递", 0, "", "", "1.0.0.20140324");
    localAppEntity16.setRank(360);
    localArrayList.add(localAppEntity16);
    AppEntity localAppEntity17 = new AppEntity(true, "10000004", "Q币充值，快速安全", true, "", "app_qq", "nativeApp", "Q币充值", 0, "", "", "0");
    localAppEntity17.setRank(350);
    localArrayList.add(localAppEntity17);
    AppEntity localAppEntity18 = new AppEntity(true, "10000008", "每30秒更换一次动态口令,更好的保护您的账户资金安全。", true, "", "app_mobileopt", "nativeApp", "手机宝令", 0, "", "", "0");
    localAppEntity18.setRank(340);
    localArrayList.add(localAppEntity18);
    AppEntity localAppEntity19 = new AppEntity(true, "30000001", "", true, "", "app_loan", "androidApp", "小微贷", 0, "", "", "0");
    localAppEntity19.setRank(330);
    localArrayList.add(localAppEntity19);
    AppEntity localAppEntity20 = new AppEntity(true, "10000009", "公开透明的网络捐赠平台", true, "10000009.amr", "app_donate", "webApp", "爱心捐赠", 0, "", "", "3.4.5.8");
    localAppEntity20.setRank(320);
    localArrayList.add(localAppEntity20);
    AppEntity localAppEntity21 = new AppEntity(true, "20000119", "公开透明的网络捐赠平台", true, "", "app_aligame", "H5App", "阿里游戏", 0, "", "", "3.0.4.7");
    localAppEntity21.setRank(310);
    localArrayList.add(localAppEntity21);
    AppEntity localAppEntity22 = new AppEntity(true, "10000114", "由支付宝发起，联合多家亿万用户量级应用相互推广的运营方案", true, "http://download.alipay.com/mobilecsprod/alipay.mobile/10000114/1_0_2_2/1392705213045_10000114_1.0.2.2_online.amr", "app_essential", "expApp", "装机必备", 0, "一亿俱乐部-装机必备", "in", "0");
    localAppEntity22.setRank(300);
    localArrayList.add(localAppEntity22);
    AppEntity localAppEntity23 = new AppEntity(true, "2013122700002486", "淘宝手机助手是淘宝官方推出的手机软件商店，为您提供丰富、安全、优质的安卓应用及游戏资源，同时也拥有手机网购安全保障、零流量当面传等特色功能， 为您提供个性化手机助手服务。", true, "http://rj.m.taobao.com/wap/appmark/outSideDownLoad.htm?key=alipayappcenter", "app_appcenter", "independantApp", "淘宝手机助手", 6766, "淘宝官方出品，省钱省时省流量", "", "3.0.1.0", "com.taobao.appcenter");
    localAppEntity23.setRank(290);
    localArrayList.add(localAppEntity23);
    localArrayList.add(new AppEntity(true, "10000007", "条码、二维码扫描，同时支持相册中的二维码", false, "", "app_scan", "nativeApp", "扫码", 0, "", "", "0"));
    localArrayList.add(new AppEntity(true, "09999998", "7*24小时服务，无需排队，免手续费", false, "", "app_broadband", "nativeApp", "固话/宽带", 0, "", "", "0"));
    localArrayList.add(new AppEntity(true, "20000041", "让信用等于财富，中国草根的权威信用", false, "", "themis", "nativeApp", "TA的信用", 0, "", "", "0"));
    localArrayList.add(new AppEntity(false, "2013073000000665", "优惠的价格，全面的影讯信息，实时的场次动态。支持全国近300家电影院在线选坐，免除排队的观影烦恼，更有各种给力的超低优惠活动，省钱省心看电影！", false, "http://m.wangpiao.com/ActChannel/ClientFile/wangpiao_3.0.3.1_70.apk", "wangpiaowang", "independantApp", "网票网", 5125, "在线选座不排队", "", "3.0.3.1", "com.wangpiao.ui"));
    localArrayList.add(new AppEntity(false, "2013081600000853", "优酷-电视剧电影动漫音乐新闻娱乐高清海量影视视频在线观看和下载，全新优酷视频娱乐客户端，国内首个为Android平台设计的视频产品。全新版本播放更流畅，超清、高清音画同步顺畅，下载速度给力提升.", false, "http://dl.m.youku.com/android/phone/Youku_Android_zhifuqianbao.apk", "youku", "independantApp", "优酷", 12805, "电视剧电影动漫音乐新闻娱乐视频", "", "1.0.0.0", "com.youku.phone"));
    localArrayList.add(new AppEntity(false, "2013071100000550", "这是一款能真正改变你生活的“打车神器”。覆盖最广！已开通超过30个城市，风靡全国；车辆最多！全国五十万辆正规出租车，随叫随到；打车最易！九成成功率，百发百中。", false, "http://www.kuaidadi.com/resources/apk/kuaididache_2.0.apk", "app_kuaidi", "independantApp", "快的打车", 0, "快的打车，支付宝一站式服务。", "", "2.0.0.0", "com.funcity.taxi.passenger"));
    localArrayList.add(new AppEntity(false, "2013112800002214", "来往是一款跨平台的即时通讯工具,可以进行免费的语音,短信聊天,提供阅后即焚,手写涂鸦,扎堆,有声动态表情等好玩有趣的功能,帮助我们认识有同样兴趣的陌生人,建立人脉,是现在最流行的社交软件。", false, "http://download.laiwang.alicdn.com/app/laiwang_4.2.0.apk", "laiwang", "independantApp", "来往", 30208, "朋友就是要来往", "", "4.2.0.0", "com.alibaba.android.babylon"));
    localArrayList.add(new AppEntity(true, "09999970", "启动页推送", false, "09999970.amr", "", "webApp", "启动页推送", 0, "", "", "1.0.0.3"));
    localArrayList.add(new AppEntity(true, "20000007", "手机安全中心", false, "20000007.amr", "", "webApp", "手机安全中心", 0, "", "", "2.0.0.0"));
    localArrayList.add(new AppEntity(true, "80000001", "卡券", false, "80000001.amr", "", "webApp", "卡券", 0, "", "", "1.4.2.5"));
    AppEntity localAppEntity24 = new AppEntity(true, "20000121", "附近", false, "", "", "H5App", "附近", 0, "", "", "1.0.5.1");
    try
    {
      localAppEntity24.setExtra(AppUtils.jsonToMap(new JSONObject("{\"launchParams\":{\"url\":\"/www/index.html\", \"showTitleBar\": \"YES\",\"showToolBar\": \"NO\",\"showLoading\":\"NO\",\"safePayEnabled\":\"YES\",\"readTitle\":\"YES\",\"backBehavior\":\"back\"}}")));
      label1577: localArrayList.add(localAppEntity24);
      return localArrayList;
    }
    catch (JSONException localJSONException)
    {
      break label1577;
    }
  }

  public List<MyAppEntity> getMyAppEntities()
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new MyAppEntity("20000032", 0, 500L));
    localArrayList.add(new MyAppEntity("09999988", 0, 490L));
    localArrayList.add(new MyAppEntity("09999999", 0, 480L));
    localArrayList.add(new MyAppEntity("10000014", 0, 470L));
    localArrayList.add(new MyAppEntity("20000123", 0, 465L));
    localArrayList.add(new MyAppEntity("09999976", 0, 460L));
    localArrayList.add(new MyAppEntity("10000003", 0, 450L));
    localArrayList.add(new MyAppEntity("09999990", 0, 440L));
    localArrayList.add(new MyAppEntity("10000009", 0, 430L));
    localArrayList.add(new MyAppEntity("20000094", 0, 420L));
    localArrayList.add(new MyAppEntity("2013082800000932", 0, 400L));
    localArrayList.add(new MyAppEntity("20000119", 1, 393L));
    localArrayList.add(new MyAppEntity("20000074", 1, 392L));
    localArrayList.add(new MyAppEntity("20000066", 1, 391L));
    localArrayList.add(new MyAppEntity("2013062600000474", 1, 390L));
    localArrayList.add(new MyAppEntity("20000046", 1, 380L));
    localArrayList.add(new MyAppEntity("11000002", 1, 370L));
    localArrayList.add(new MyAppEntity("10000006", 1, 350L));
    localArrayList.add(new MyAppEntity("10000004", 1, 340L));
    localArrayList.add(new MyAppEntity("10000008", 1, 330L));
    localArrayList.add(new MyAppEntity("2013122700002486", 1, 310L));
    localArrayList.add(new MyAppEntity("10000114", 1, 300L));
    return localArrayList;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.ext.openplatform.persist.AllAppInfoDao
 * JD-Core Version:    0.6.2
 */