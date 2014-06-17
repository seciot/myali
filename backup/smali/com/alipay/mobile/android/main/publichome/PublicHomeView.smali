.class public Lcom/alipay/mobile/android/main/publichome/PublicHomeView;
.super Landroid/widget/RelativeLayout;
.source "PublicHomeView.java"

# interfaces
.implements Lcom/alipay/mobile/commonui/widget/APPullRefreshView$RefreshListener;
.implements Lcom/alipay/mobile/publicsvc/home/proguard/e/j;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EView;
.end annotation


# static fields
.field public static MENU_ID_REMOVE:I

.field public static TARGET_FRAGMENT_ALIPAY_MESSAGE:Ljava/lang/String;

.field public static TARGET_FRAGMENT_ALIPAY_PREFERENTIAL:Ljava/lang/String;

.field public static TARGET_FRAGMENT_KEY:Ljava/lang/String;


# instance fields
.field private a:Lcom/alipay/mobile/framework/MicroApplicationContext;

.field private b:Lcom/alipay/mobile/publicsvc/home/proguard/h/a;

.field private c:Lcom/alipay/mobile/publicsvc/home/proguard/e/a;

.field private d:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

.field private e:Lcom/alipay/mobile/commonui/widget/APOverView;

.field protected emptyContainer:Landroid/widget/RelativeLayout;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "public_home_empty_container"
    .end annotation
.end field

.field private f:Lcom/alipay/mobile/framework/app/ui/DialogHelper;

.field private g:Landroid/app/Activity;

.field protected mPullRefreshContainer:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "pull_refresh_container"
    .end annotation
.end field

.field protected noFollowAccountBottom:Landroid/widget/LinearLayout;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "no_follow_account_bottom"
    .end annotation
.end field

.field protected publicHomeList:Landroid/widget/ListView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "public_home_list"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-string/jumbo v0, "TARGET_FRAGMENT_KEY"

    sput-object v0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->TARGET_FRAGMENT_KEY:Ljava/lang/String;

    .line 64
    const-string/jumbo v0, "ALIPAY_MESSAGE"

    sput-object v0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->TARGET_FRAGMENT_ALIPAY_MESSAGE:Ljava/lang/String;

    .line 67
    const-string/jumbo v0, "ALIPAY_PREFERENTIAL"

    sput-object v0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->TARGET_FRAGMENT_ALIPAY_PREFERENTIAL:Ljava/lang/String;

    .line 96
    const/4 v0, 0x1

    sput v0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->MENU_ID_REMOVE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 117
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->e:Lcom/alipay/mobile/commonui/widget/APOverView;

    .line 118
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->g:Landroid/app/Activity;

    .line 119
    invoke-direct {p0}, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->a()V

    .line 120
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 111
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->e:Lcom/alipay/mobile/commonui/widget/APOverView;

    .line 112
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->g:Landroid/app/Activity;

    .line 113
    invoke-direct {p0}, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->a()V

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 105
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->e:Lcom/alipay/mobile/commonui/widget/APOverView;

    .line 106
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->g:Landroid/app/Activity;

    .line 107
    invoke-direct {p0}, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->a()V

    .line 108
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 123
    new-instance v0, Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    iget-object v1, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->g:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->f:Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    .line 124
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 126
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    iput-object v0, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->d:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    .line 128
    return-void
.end method


# virtual methods
.method public afterView()V
    .locals 3

    .prologue
    .line 133
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->g:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/ui/R$layout;->ap_framework_pullrefresh_overview:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView;

    iput-object v0, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->e:Lcom/alipay/mobile/commonui/widget/APOverView;

    .line 138
    new-instance v0, Lcom/alipay/mobile/publicsvc/home/proguard/e/a;

    iget-object v1, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->g:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/publicsvc/home/proguard/e/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->c:Lcom/alipay/mobile/publicsvc/home/proguard/e/a;

    .line 139
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->c:Lcom/alipay/mobile/publicsvc/home/proguard/e/a;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/publicsvc/home/proguard/e/a;->a(Lcom/alipay/mobile/publicsvc/home/proguard/e/j;)V

    .line 140
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->publicHomeList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->c:Lcom/alipay/mobile/publicsvc/home/proguard/e/a;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 141
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->mPullRefreshContainer:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;->setRefreshListener(Lcom/alipay/mobile/commonui/widget/APPullRefreshView$RefreshListener;)V

    .line 142
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->mPullRefreshContainer:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;->setEnablePull(Z)V

    .line 143
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->noFollowAccountBottom:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/alipay/mobile/android/main/publichome/a;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/android/main/publichome/a;-><init>(Lcom/alipay/mobile/android/main/publichome/PublicHomeView;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    invoke-virtual {p0}, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->startLoadData()V

    .line 152
    return-void
.end method

.method auth()V
    .locals 1
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    .prologue
    .line 480
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->d:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->auth()Z

    .line 481
    return-void
.end method

.method public canRefresh()Z
    .locals 1

    .prologue
    .line 497
    const/4 v0, 0x1

    return v0
.end method

.method public dismissProgressDialog()V
    .locals 2

    .prologue
    .line 685
    invoke-virtual {p0}, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 686
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    if-eqz v1, :cond_0

    .line 688
    check-cast v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->dismissProgressDialog()V

    .line 690
    :cond_0
    return-void
.end method

.method public getOperateMenuRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 506
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->c:Lcom/alipay/mobile/publicsvc/home/proguard/e/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->c:Lcom/alipay/mobile/publicsvc/home/proguard/e/a;

    invoke-virtual {v0}, Lcom/alipay/mobile/publicsvc/home/proguard/e/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 508
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->c:Lcom/alipay/mobile/publicsvc/home/proguard/e/a;

    invoke-virtual {v0}, Lcom/alipay/mobile/publicsvc/home/proguard/e/a;->a()Landroid/graphics/Rect;

    move-result-object v0

    .line 510
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOverView()Lcom/alipay/mobile/commonui/widget/APOverView;
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->e:Lcom/alipay/mobile/commonui/widget/APOverView;

    return-object v0
.end method

.method public hideOperateMenu()V
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->c:Lcom/alipay/mobile/publicsvc/home/proguard/e/a;

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->c:Lcom/alipay/mobile/publicsvc/home/proguard/e/a;

    invoke-virtual {v0}, Lcom/alipay/mobile/publicsvc/home/proguard/e/a;->c()V

    .line 473
    :cond_0
    return-void
.end method

.method public itemClick(Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;Landroid/view/View;)V
    .locals 16
    .parameter
    .parameter
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    .prologue
    .line 284
    const/4 v2, 0x0

    .line 286
    if-nez p1, :cond_1

    .line 357
    :cond_0
    :goto_0
    return-void

    .line 290
    :cond_1
    const-string/jumbo v1, "wgtnumber"

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->getMsgNoteType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "wgtdot"

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->getMsgNoteType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 294
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 295
    if-eqz v1, :cond_3

    instance-of v3, v1, Lcom/alipay/mobile/publicsvc/home/proguard/e/i;

    if-eqz v3, :cond_3

    .line 297
    check-cast v1, Lcom/alipay/mobile/publicsvc/home/proguard/e/i;

    .line 298
    iget-object v3, v1, Lcom/alipay/mobile/publicsvc/home/proguard/e/i;->n:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

    if-eqz v3, :cond_3

    iget-object v3, v1, Lcom/alipay/mobile/publicsvc/home/proguard/e/i;->n:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

    invoke-virtual {v3}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->getWidgetId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/common/utils/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 301
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->b:Lcom/alipay/mobile/publicsvc/home/proguard/h/a;

    iget-object v2, v1, Lcom/alipay/mobile/publicsvc/home/proguard/e/i;->n:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->getWidgetId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/publicsvc/home/proguard/h/a;->a(Ljava/lang/String;)I

    move-result v2

    .line 303
    iget-object v1, v1, Lcom/alipay/mobile/publicsvc/home/proguard/e/i;->n:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->ackClick()V

    :cond_3
    move v1, v2

    move v2, v1

    .line 317
    :cond_4
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->getGotoAppUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 318
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    const-class v3, Lcom/alipay/mobile/framework/service/common/SchemeService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/service/common/SchemeService;

    .line 321
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->getGotoAppUri()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 322
    invoke-virtual {v1, v3}, Lcom/alipay/mobile/framework/service/common/SchemeService;->process(Landroid/net/Uri;)I

    .line 324
    :try_start_0
    const-string/jumbo v1, "appId"

    invoke-virtual {v3, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    const-string/jumbo v4, ""

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 325
    :goto_2
    invoke-static {v1, v2}, Lcom/alipay/mobile/publicsvc/home/proguard/c/a;->a(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 328
    :catch_0
    move-exception v1

    goto/16 :goto_0

    .line 307
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->getUnReadMsgCount()I

    move-result v1

    if-lez v1, :cond_4

    .line 308
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->getUnReadMsgCount()I

    move-result v2

    .line 309
    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->setUnReadMsgCount(I)V

    .line 310
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->b:Lcom/alipay/mobile/publicsvc/home/proguard/h/a;

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->getFollowObjectId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5}, Lcom/alipay/mobile/publicsvc/home/proguard/h/a;->updateUnReadMsgCount(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 313
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->c:Lcom/alipay/mobile/publicsvc/home/proguard/e/a;

    invoke-static/range {p2 .. p2}, Lcom/alipay/mobile/publicsvc/home/proguard/e/a;->a(Landroid/view/View;)V

    goto :goto_1

    .line 324
    :cond_6
    :try_start_1
    const-string/jumbo v1, "saId"

    invoke-virtual {v3, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_2

    .line 333
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->getFollowType()Ljava/lang/String;

    move-result-object v1

    .line 334
    const-string/jumbo v3, "ALIPAY_MSG"

    invoke-static {v3, v1}, Lcom/alipay/mobile/common/utils/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 336
    sget-object v1, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->TARGET_FRAGMENT_ALIPAY_MESSAGE:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->getFollowObjectId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/alipay/mobile/publicsvc/home/proguard/i/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    invoke-static {v2}, Lcom/alipay/mobile/publicsvc/home/proguard/c/a;->a(I)V

    goto/16 :goto_0

    .line 342
    :cond_8
    const-string/jumbo v3, "PREFER_MSG"

    invoke-static {v3, v1}, Lcom/alipay/mobile/common/utils/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 344
    sget-object v1, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->TARGET_FRAGMENT_ALIPAY_PREFERENTIAL:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->getFollowObjectId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/alipay/mobile/publicsvc/home/proguard/i/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    invoke-static {v2}, Lcom/alipay/mobile/publicsvc/home/proguard/c/a;->a(I)V

    goto/16 :goto_0

    .line 349
    :cond_9
    const-string/jumbo v3, "PUBLIC"

    invoke-static {v3, v1}, Lcom/alipay/mobile/common/utils/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 351
    invoke-static/range {p1 .. p1}, Lcom/alipay/mobile/publicsvc/home/proguard/i/a;->a(Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;)V

    .line 352
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->getFollowObjectId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/alipay/mobile/publicsvc/home/proguard/c/a;->a(Ljava/lang/String;I)V

    .line 354
    const-string/jumbo v9, "alipayHome"

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->getFollowObjectId()Ljava/lang/String;

    move-result-object v14

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->OPENPAGE:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v3, ""

    const/4 v4, 0x0

    const-string/jumbo v5, "public"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "publicContactView"

    const-string/jumbo v8, ""

    const-string/jumbo v10, ""

    const-string/jumbo v11, "u"

    const-string/jumbo v12, "c"

    const/4 v13, 0x5

    new-array v13, v13, [Ljava/lang/String;

    const/4 v15, 0x0

    aput-object v14, v13, v15

    const/4 v14, 0x1

    const-string/jumbo v15, ""

    aput-object v15, v13, v14

    const/4 v14, 0x2

    const-string/jumbo v15, ""

    aput-object v15, v13, v14

    const/4 v14, 0x3

    const-string/jumbo v15, ""

    aput-object v15, v13, v14

    const/4 v14, 0x4

    const-string/jumbo v15, ""

    aput-object v15, v13, v14

    invoke-static/range {v1 .. v13}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected loginAndStartSearch()V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->d:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->auth()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    invoke-static {}, Lcom/alipay/mobile/publicsvc/home/proguard/i/a;->a()V

    .line 191
    :cond_0
    return-void
.end method

.method public onRefresh()V
    .locals 8

    .prologue
    .line 485
    new-instance v0, Lcom/alipay/mobile/publicsvc/home/proguard/c/b;

    const-string/jumbo v1, "YWUC-GZPT-C35"

    const-string/jumbo v2, "clicked"

    const-string/jumbo v3, "public"

    const-string/jumbo v4, "publicIndexList"

    const-string/jumbo v5, "publicIndexList"

    const-string/jumbo v6, "ppmainHandRefresh"

    const-string/jumbo v7, ""

    invoke-direct/range {v0 .. v7}, Lcom/alipay/mobile/publicsvc/home/proguard/c/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/mobile/publicsvc/home/proguard/c/a;->a(Lcom/alipay/mobile/publicsvc/home/proguard/c/b;)V

    .line 486
    invoke-virtual {p0}, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->hideOperateMenu()V

    .line 487
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->queryPublicHomeFromRPC(Z)V

    .line 488
    return-void
.end method

.method public operateMenuVisiable()Z
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->c:Lcom/alipay/mobile/publicsvc/home/proguard/e/a;

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->c:Lcom/alipay/mobile/publicsvc/home/proguard/e/a;

    invoke-virtual {v0}, Lcom/alipay/mobile/publicsvc/home/proguard/e/a;->b()Z

    move-result v0

    .line 463
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected publicHomeAfterRemove(ZLcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;)V
    .locals 7
    .parameter
    .parameter
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 409
    if-eqz p1, :cond_1

    .line 410
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->c:Lcom/alipay/mobile/publicsvc/home/proguard/e/a;

    invoke-virtual {p2}, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->getFollowObjectId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/publicsvc/home/proguard/e/a;->a(Ljava/lang/String;)V

    .line 412
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->c:Lcom/alipay/mobile/publicsvc/home/proguard/e/a;

    invoke-virtual {v0}, Lcom/alipay/mobile/publicsvc/home/proguard/e/a;->c()V

    .line 413
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->c:Lcom/alipay/mobile/publicsvc/home/proguard/e/a;

    invoke-virtual {v0}, Lcom/alipay/mobile/publicsvc/home/proguard/e/a;->notifyDataSetChanged()V

    .line 415
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->c:Lcom/alipay/mobile/publicsvc/home/proguard/e/a;

    invoke-virtual {v0}, Lcom/alipay/mobile/publicsvc/home/proguard/e/a;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->emptyContainer:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 417
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->publicHomeList:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 425
    :cond_0
    :goto_0
    return-void

    .line 420
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->f:Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->f:Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    const-string/jumbo v1, ""

    const-string/jumbo v2, "\u62b1\u6b49\uff0c\u7f51\u7edc\u8d85\u65f6\uff0c\u5220\u9664\u5931\u8d25\u3002"

    const-string/jumbo v3, "\u786e\u5b9a"

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0
.end method

.method public publicHomeCancelTopOperate(Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;)V
    .locals 1
    .parameter
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    .prologue
    .line 368
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->b:Lcom/alipay/mobile/publicsvc/home/proguard/h/a;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/publicsvc/home/proguard/h/a;->a(Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;)V

    .line 369
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->c:Lcom/alipay/mobile/publicsvc/home/proguard/e/a;

    invoke-virtual {v0}, Lcom/alipay/mobile/publicsvc/home/proguard/e/a;->c()V

    .line 370
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->c:Lcom/alipay/mobile/publicsvc/home/proguard/e/a;

    invoke-virtual {v0}, Lcom/alipay/mobile/publicsvc/home/proguard/e/a;->d()V

    .line 371
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->c:Lcom/alipay/mobile/publicsvc/home/proguard/e/a;

    invoke-virtual {v0}, Lcom/alipay/mobile/publicsvc/home/proguard/e/a;->notifyDataSetChanged()V

    .line 372
    return-void
.end method

.method public publicHomeRemoveOperate(Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;)V
    .locals 5
    .parameter
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 382
    const-string/jumbo v1, ""

    invoke-virtual {p0, v1, v2, v0}, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 385
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->b:Lcom/alipay/mobile/publicsvc/home/proguard/h/a;

    invoke-virtual {p1}, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->getFollowObjectId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->getFollowType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/alipay/mobile/publicsvc/home/proguard/h/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/publiccore/common/service/facade/model/result/PublicResult;

    move-result-object v1

    .line 390
    iget-object v2, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->d:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->isLogin()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->d:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    .line 391
    :cond_0
    if-eqz v1, :cond_1

    iget v1, v1, Lcom/alipay/publiccore/common/service/facade/model/result/PublicResult;->resultCode:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_1

    if-eqz v0, :cond_1

    .line 392
    iget-object v1, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->b:Lcom/alipay/mobile/publicsvc/home/proguard/h/a;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->getFollowObjectId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/alipay/mobile/publicsvc/home/proguard/h/a;->removeLocalFollow(Ljava/lang/String;Ljava/lang/String;)Z

    .line 394
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->publicHomeAfterRemove(ZLcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 399
    :goto_0
    invoke-virtual {p0}, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->dismissProgressDialog()V

    .line 400
    return-void

    .line 396
    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->publicHomeAfterRemove(ZLcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 399
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->dismissProgressDialog()V

    throw v0
.end method

.method public publicHomeTopOperation(Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;)V
    .locals 1
    .parameter
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    .prologue
    .line 436
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->b:Lcom/alipay/mobile/publicsvc/home/proguard/h/a;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/publicsvc/home/proguard/h/a;->b(Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;)V

    .line 437
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->c:Lcom/alipay/mobile/publicsvc/home/proguard/e/a;

    invoke-virtual {v0}, Lcom/alipay/mobile/publicsvc/home/proguard/e/a;->c()V

    .line 438
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->c:Lcom/alipay/mobile/publicsvc/home/proguard/e/a;

    invoke-virtual {v0}, Lcom/alipay/mobile/publicsvc/home/proguard/e/a;->d()V

    .line 439
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->c:Lcom/alipay/mobile/publicsvc/home/proguard/e/a;

    invoke-virtual {v0}, Lcom/alipay/mobile/publicsvc/home/proguard/e/a;->notifyDataSetChanged()V

    .line 440
    return-void
.end method

.method protected queryPublicHomeFromRPC(Z)V
    .locals 3
    .parameter
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    .prologue
    .line 207
    const/4 v1, 0x0

    .line 209
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->b:Lcom/alipay/mobile/publicsvc/home/proguard/h/a;

    invoke-virtual {v0}, Lcom/alipay/mobile/publicsvc/home/proguard/h/a;->queryUserFollowAccountFromRemote()Lcom/alipay/publiccore/client/result/OfficialHomeListResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 215
    invoke-virtual {p0}, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->refreshFinished()V

    .line 217
    :goto_0
    if-eqz v0, :cond_2

    iget v1, v0, Lcom/alipay/publiccore/client/result/OfficialHomeListResult;->resultCode:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_2

    .line 218
    iget-object v1, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->b:Lcom/alipay/mobile/publicsvc/home/proguard/h/a;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/publicsvc/home/proguard/h/a;->syncFollowAccountInfoToLocal(Lcom/alipay/publiccore/client/result/OfficialHomeListResult;)Ljava/util/List;

    move-result-object v0

    .line 220
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->reloadPublichomeList(Ljava/util/List;)V

    .line 226
    :cond_0
    :goto_1
    return-void

    .line 210
    :catch_0
    move-exception v0

    .line 211
    if-nez p1, :cond_1

    .line 212
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 215
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->refreshFinished()V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->refreshFinished()V

    move-object v0, v1

    .line 216
    goto :goto_0

    .line 222
    :cond_2
    if-eqz v0, :cond_0

    iget v0, v0, Lcom/alipay/publiccore/client/result/OfficialHomeListResult;->resultCode:I

    const/16 v1, 0x1f9

    if-eq v0, v1, :cond_0

    .line 223
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->f:Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    const-string/jumbo v1, "\u7f51\u7edc\u8fde\u63a5\u8d85\u65f6"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->toast(Ljava/lang/String;I)V

    goto :goto_1
.end method

.method protected refreshFinished()V
    .locals 1
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    .prologue
    .line 230
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->mPullRefreshContainer:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;->refreshFinished()V

    .line 231
    return-void
.end method

.method public refreshPublichomeItems(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    .prologue
    .line 642
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->g:Landroid/app/Activity;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 662
    :cond_0
    :goto_0
    return-void

    .line 646
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->c:Lcom/alipay/mobile/publicsvc/home/proguard/e/a;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/publicsvc/home/proguard/e/a;->b(Ljava/util/List;)V

    .line 647
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->c:Lcom/alipay/mobile/publicsvc/home/proguard/e/a;

    invoke-virtual {v0}, Lcom/alipay/mobile/publicsvc/home/proguard/e/a;->d()V

    .line 648
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->c:Lcom/alipay/mobile/publicsvc/home/proguard/e/a;

    invoke-virtual {v0}, Lcom/alipay/mobile/publicsvc/home/proguard/e/a;->notifyDataSetChanged()V

    .line 650
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->c:Lcom/alipay/mobile/publicsvc/home/proguard/e/a;

    invoke-virtual {v0}, Lcom/alipay/mobile/publicsvc/home/proguard/e/a;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 651
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->publicHomeList:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 652
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->emptyContainer:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 655
    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/LogCatLog;->isSwitch()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 656
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "event=[PublicHomeNotifyProcessor#updataView] datas=["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0
.end method

.method public reloadPublichomeList(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 240
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->g:Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 243
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->c:Lcom/alipay/mobile/publicsvc/home/proguard/e/a;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/publicsvc/home/proguard/e/a;->a(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 245
    :cond_2
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 246
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->c:Lcom/alipay/mobile/publicsvc/home/proguard/e/a;

    invoke-virtual {v0}, Lcom/alipay/mobile/publicsvc/home/proguard/e/a;->c()V

    .line 247
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->c:Lcom/alipay/mobile/publicsvc/home/proguard/e/a;

    invoke-virtual {v0}, Lcom/alipay/mobile/publicsvc/home/proguard/e/a;->e()V

    .line 248
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->c:Lcom/alipay/mobile/publicsvc/home/proguard/e/a;

    invoke-virtual {v0}, Lcom/alipay/mobile/publicsvc/home/proguard/e/a;->notifyDataSetChanged()V

    .line 249
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->emptyContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 250
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->publicHomeList:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0

    .line 252
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->c:Lcom/alipay/mobile/publicsvc/home/proguard/e/a;

    invoke-virtual {v0}, Lcom/alipay/mobile/publicsvc/home/proguard/e/a;->c()V

    .line 253
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->c:Lcom/alipay/mobile/publicsvc/home/proguard/e/a;

    invoke-virtual {v0}, Lcom/alipay/mobile/publicsvc/home/proguard/e/a;->e()V

    .line 254
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->c:Lcom/alipay/mobile/publicsvc/home/proguard/e/a;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/publicsvc/home/proguard/e/a;->b(Ljava/util/List;)V

    .line 255
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->c:Lcom/alipay/mobile/publicsvc/home/proguard/e/a;

    invoke-virtual {v0}, Lcom/alipay/mobile/publicsvc/home/proguard/e/a;->d()V

    .line 256
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->c:Lcom/alipay/mobile/publicsvc/home/proguard/e/a;

    invoke-virtual {v0}, Lcom/alipay/mobile/publicsvc/home/proguard/e/a;->notifyDataSetChanged()V

    .line 257
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->publicHomeList:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 258
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->emptyContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public remove(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 530
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->c:Lcom/alipay/mobile/publicsvc/home/proguard/e/a;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/publicsvc/home/proguard/e/a;->a(Ljava/lang/String;)V

    .line 531
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->c:Lcom/alipay/mobile/publicsvc/home/proguard/e/a;

    invoke-virtual {v0}, Lcom/alipay/mobile/publicsvc/home/proguard/e/a;->c()V

    .line 532
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->c:Lcom/alipay/mobile/publicsvc/home/proguard/e/a;

    invoke-virtual {v0}, Lcom/alipay/mobile/publicsvc/home/proguard/e/a;->notifyDataSetChanged()V

    .line 533
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->c:Lcom/alipay/mobile/publicsvc/home/proguard/e/a;

    invoke-virtual {v0}, Lcom/alipay/mobile/publicsvc/home/proguard/e/a;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->emptyContainer:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 535
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->publicHomeList:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 537
    :cond_0
    return-void
.end method

.method public scrollToTop()V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
        delay = 0x1f4L
    .end annotation

    .prologue
    .line 447
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->publicHomeList:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->publicHomeList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->c:Lcom/alipay/mobile/publicsvc/home/proguard/e/a;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 450
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->publicHomeList:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 452
    :cond_0
    return-void
.end method

.method public setPublicHomeManager(Lcom/alipay/mobile/publicsvc/home/proguard/h/a;)V
    .locals 0
    .parameter

    .prologue
    .line 636
    iput-object p1, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->b:Lcom/alipay/mobile/publicsvc/home/proguard/h/a;

    .line 638
    return-void
.end method

.method protected showProcessBarQuery()V
    .locals 0
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    .prologue
    .line 182
    return-void
.end method

.method public showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 673
    invoke-virtual {p0}, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 674
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    if-eqz v1, :cond_0

    .line 676
    check-cast v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 679
    :cond_0
    return-void
.end method

.method protected startLoadData()V
    .locals 3
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 159
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->d:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    .line 162
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 163
    iget-object v1, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->b:Lcom/alipay/mobile/publicsvc/home/proguard/h/a;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v2}, Lcom/alipay/mobile/publicsvc/home/proguard/h/a;->queryUserFollowAccountFromLocal(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    .line 168
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 169
    :cond_0
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->reloadPublichomeList(Ljava/util/List;)V

    .line 176
    :goto_0
    return-void

    .line 173
    :cond_1
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->queryPublicHomeFromRPC(Z)V

    goto :goto_0
.end method

.method public updatePublicObject(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 549
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->c:Lcom/alipay/mobile/publicsvc/home/proguard/e/a;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/publicsvc/home/proguard/e/a;->b(Ljava/lang/String;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;

    move-result-object v2

    .line 551
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->getLatestMsgTime()J

    move-result-wide v3

    cmp-long v0, v3, p2

    if-nez v0, :cond_0

    invoke-virtual {v2}, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->getLatestMsgThridAccount()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p5}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->getLatestMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p4}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->getUnReadMsgCount()I

    move-result v0

    if-eq p6, v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    .line 552
    invoke-virtual {v2, p2, p3}, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->setLatestMsgTime(J)V

    .line 553
    invoke-virtual {v2, p5}, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->setLatestMsgThridAccount(Ljava/lang/String;)V

    .line 554
    invoke-virtual {v2, p4}, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->setLatestMsg(Ljava/lang/String;)V

    .line 555
    invoke-virtual {v2, p6}, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->setUnReadMsgCount(I)V

    .line 556
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->c:Lcom/alipay/mobile/publicsvc/home/proguard/e/a;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/publicsvc/home/proguard/e/a;->a(Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;)V

    .line 557
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->c:Lcom/alipay/mobile/publicsvc/home/proguard/e/a;

    invoke-virtual {v0}, Lcom/alipay/mobile/publicsvc/home/proguard/e/a;->d()V

    .line 558
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->c:Lcom/alipay/mobile/publicsvc/home/proguard/e/a;

    invoke-virtual {v0}, Lcom/alipay/mobile/publicsvc/home/proguard/e/a;->notifyDataSetChanged()V

    .line 559
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->c:Lcom/alipay/mobile/publicsvc/home/proguard/e/a;

    invoke-virtual {v0}, Lcom/alipay/mobile/publicsvc/home/proguard/e/a;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 560
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->publicHomeList:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 561
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->emptyContainer:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 564
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 551
    goto :goto_0
.end method

.method public updatePublicObject(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;IJ)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 568
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->c:Lcom/alipay/mobile/publicsvc/home/proguard/e/a;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/publicsvc/home/proguard/e/a;->b(Ljava/lang/String;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;

    move-result-object v2

    .line 571
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->getLatestMsgTime()J

    move-result-wide v3

    cmp-long v0, v3, p2

    if-nez v0, :cond_0

    invoke-virtual {v2}, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->getTopOperateTime()J

    move-result-wide v3

    cmp-long v0, v3, p7

    if-nez v0, :cond_0

    invoke-virtual {v2}, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->getLatestMsgThridAccount()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p5}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->getLatestMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p4}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->getUnReadMsgCount()I

    move-result v0

    if-eq p6, v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    .line 573
    invoke-virtual {v2, p2, p3}, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->setLatestMsgTime(J)V

    .line 574
    invoke-virtual {v2, p5}, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->setLatestMsgThridAccount(Ljava/lang/String;)V

    .line 575
    invoke-virtual {v2, p4}, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->setLatestMsg(Ljava/lang/String;)V

    .line 576
    invoke-virtual {v2, p6}, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->setUnReadMsgCount(I)V

    .line 577
    invoke-virtual {v2, p7, p8}, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->setTopOperateTime(J)V

    .line 578
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->c:Lcom/alipay/mobile/publicsvc/home/proguard/e/a;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/publicsvc/home/proguard/e/a;->a(Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;)V

    .line 579
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->c:Lcom/alipay/mobile/publicsvc/home/proguard/e/a;

    invoke-virtual {v0}, Lcom/alipay/mobile/publicsvc/home/proguard/e/a;->d()V

    .line 580
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->c:Lcom/alipay/mobile/publicsvc/home/proguard/e/a;

    invoke-virtual {v0}, Lcom/alipay/mobile/publicsvc/home/proguard/e/a;->notifyDataSetChanged()V

    .line 581
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->c:Lcom/alipay/mobile/publicsvc/home/proguard/e/a;

    invoke-virtual {v0}, Lcom/alipay/mobile/publicsvc/home/proguard/e/a;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 582
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->publicHomeList:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 583
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->emptyContainer:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 586
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 571
    goto :goto_0
.end method
