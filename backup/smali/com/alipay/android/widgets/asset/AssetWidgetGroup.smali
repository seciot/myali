.class public Lcom/alipay/android/widgets/asset/AssetWidgetGroup;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/android/launcher/core/IWidgetGroup;


# instance fields
.field protected a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

.field private b:Lcom/alipay/mobile/framework/MicroApplicationContext;

.field private c:Landroid/app/Activity;

.field private d:Ljava/lang/String;

.field private e:Landroid/view/ViewGroup;

.field private f:Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetContainer;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/launcher/core/IWidget;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

.field private i:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

.field private j:J

.field private k:J

.field private l:Lcom/alipay/android/widgets/asset/adapter/WealthWidgetFlagAdapter;

.field private m:Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor_;

.field private n:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

.field private o:Landroid/widget/RelativeLayout;

.field private p:Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReciever;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->g:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/widgets/asset/AssetWidgetGroup;)Lcom/alipay/mobile/framework/MicroApplicationContext;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    return-object v0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "WealthHome"

    return-object v0
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->m:Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor_;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor_;->a(Z)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeInfoResult;)V
    .locals 18

    if-eqz p1, :cond_1

    move-object/from16 v0, p1

    iget-boolean v1, v0, Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeInfoResult;->success:Z

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->l:Lcom/alipay/android/widgets/asset/adapter/WealthWidgetFlagAdapter;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeInfoResult;->homeInfo:Ljava/util/Map;

    invoke-virtual {v1, v2}, Lcom/alipay/android/widgets/asset/adapter/WealthWidgetFlagAdapter;->a(Ljava/util/Map;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->l:Lcom/alipay/android/widgets/asset/adapter/WealthWidgetFlagAdapter;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeInfoResult;->homeMarkInfo:Ljava/util/Map;

    invoke-virtual {v1, v2}, Lcom/alipay/android/widgets/asset/adapter/WealthWidgetFlagAdapter;->b(Ljava/util/Map;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->o:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->c:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->h:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    invoke-virtual {v1}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->ackClick()V

    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->f:Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetContainer;

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->f:Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetContainer;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetContainer;->refresh()V

    :cond_1
    if-nez p1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->l:Lcom/alipay/android/widgets/asset/adapter/WealthWidgetFlagAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alipay/android/widgets/asset/adapter/WealthWidgetFlagAdapter;->a(Ljava/util/Map;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->l:Lcom/alipay/android/widgets/asset/adapter/WealthWidgetFlagAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alipay/android/widgets/asset/adapter/WealthWidgetFlagAdapter;->b(Ljava/util/Map;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->f:Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetContainer;

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->f:Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetContainer;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetContainer;->refresh()V

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->k:J

    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->j:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->k:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->k:J

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->j:J

    sub-long v14, v1, v3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->c:Landroid/app/Activity;

    sget-object v2, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->MONITORPERF:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-class v7, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "-"

    const-string/jumbo v9, "perf_open_assets"

    const/4 v10, 0x0

    const-string/jumbo v11, "s"

    const-string/jumbo v12, "c"

    const/4 v13, 0x4

    new-array v13, v13, [Ljava/lang/String;

    const/16 v16, 0x0

    const-string/jumbo v17, ""

    aput-object v17, v13, v16

    const/16 v16, 0x1

    const-string/jumbo v17, ""

    aput-object v17, v13, v16

    const/16 v16, 0x2

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v16

    const/4 v14, 0x3

    const-string/jumbo v15, ""

    aput-object v15, v13, v14

    invoke-static/range {v1 .. v13}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->k:J

    const-wide/16 v1, 0x0

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->j:J

    :cond_3
    return-void
.end method

.method public final a()Z
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->f:Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetContainer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public destroy()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->p:Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReciever;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u53d6\u6d88\u6ce8\u518c\u6d88\u606f\u76d1\u542c\u5668\u5f02\u5e38\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0
.end method

.method public getAllWidgets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/launcher/core/IWidget;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->g:Ljava/util/List;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getIndicator()Landroid/view/View;
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->c:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/wealth/home/R$layout;->c:I

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->o:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->o:Landroid/widget/RelativeLayout;

    sget v1, Lcom/alipay/android/phone/wealth/home/R$id;->e:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->h:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->h:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    const-string/jumbo v1, "50000003"

    invoke-virtual {v0, v1}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->setBindingWidget(Ljava/lang/String;)V

    new-instance v0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    iget-object v1, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->c:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->n:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->n:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    sget v1, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->MSG_WIDGET_TYPE_SDK:I

    invoke-virtual {v0, v1}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->setWidgetType(I)V

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->n:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    const-string/jumbo v1, "50000004"

    invoke-virtual {v0, v1}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->setBindingWidget(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->h:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    iget-object v1, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->n:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    invoke-virtual {v0, v1}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->addChild(Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;)V

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->o:Landroid/widget/RelativeLayout;

    sget v1, Lcom/alipay/android/phone/wealth/home/R$id;->d:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->c:Landroid/app/Activity;

    sget v2, Lcom/alipay/android/phone/wealth/home/R$string;->a:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->c:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/android/phone/wealth/home/R$drawable;->a:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v3

    invoke-virtual {v1, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v0, v4, v1, v4, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->c:Landroid/app/Activity;

    invoke-static {v0}, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor_;->a(Landroid/content/Context;)Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor_;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->m:Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor_;

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->m:Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor_;

    invoke-virtual {v0, p0}, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor_;->a(Lcom/alipay/android/widgets/asset/AssetWidgetGroup;)V

    new-instance v0, Lcom/alipay/android/widgets/asset/adapter/WealthWidgetFlagAdapter;

    iget-object v1, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->c:Landroid/app/Activity;

    iget-object v2, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->m:Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor_;

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/widgets/asset/adapter/WealthWidgetFlagAdapter;-><init>(Landroid/content/Context;Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;)V

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->l:Lcom/alipay/android/widgets/asset/adapter/WealthWidgetFlagAdapter;

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->l:Lcom/alipay/android/widgets/asset/adapter/WealthWidgetFlagAdapter;

    iget-object v1, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->h:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    invoke-virtual {v0, v1}, Lcom/alipay/android/widgets/asset/adapter/WealthWidgetFlagAdapter;->a(Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;)V

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->i:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->m:Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor_;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor_;->b(Z)Z

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "com.alipay.security.login"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "com.alipay.mobile.android.main.avatar.action.changed"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "com.alipay.mobile.GESTURE_SETTING_SUCESS"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "com.alipay.mobile.LAUNCHER_STATUS_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v2, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReciever;

    iget-object v3, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->l:Lcom/alipay/android/widgets/asset/adapter/WealthWidgetFlagAdapter;

    iget-object v4, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->m:Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor_;

    iget-object v5, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-direct {v2, v3, v4, v5}, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReciever;-><init>(Lcom/alipay/android/widgets/asset/adapter/WealthWidgetFlagAdapter;Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;Lcom/alipay/mobile/framework/MicroApplicationContext;)V

    iput-object v2, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->p:Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReciever;

    iget-object v2, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->p:Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReciever;

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->o:Landroid/widget/RelativeLayout;

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getView()Landroid/view/View;
    .locals 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->j:J

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->f:Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetContainer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->c:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/wealth/home/R$layout;->b:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->e:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->e:Landroid/view/ViewGroup;

    sget v1, Lcom/alipay/android/phone/wealth/home/R$id;->a:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iget-object v1, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->c:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/android/phone/wealth/home/R$string;->a:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setTitleText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonVisiable(Z)V

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    const-string/jumbo v1, "\u66f4\u591a"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    new-instance v1, Lcom/alipay/android/widgets/asset/a;

    invoke-direct {v1, p0}, Lcom/alipay/android/widgets/asset/a;-><init>(Lcom/alipay/android/widgets/asset/AssetWidgetGroup;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->e:Landroid/view/ViewGroup;

    sget v1, Lcom/alipay/android/phone/wealth/home/R$id;->b:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetContainer;

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->f:Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetContainer;

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->f:Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetContainer;

    iget-object v1, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->l:Lcom/alipay/android/widgets/asset/adapter/WealthWidgetFlagAdapter;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetContainer;->setAdapter(Lcom/alipay/mobile/framework/widgetcontainer/WidgetContainerAdapter;)V

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iget-object v1, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->n:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->attachNewFlagView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->n:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    invoke-virtual {v0}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->refreshMsgFlag()V

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->e:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onRefresh()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->isLogin()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/alipay/android/widgets/asset/b;

    invoke-direct {v2, p0, v0}, Lcom/alipay/android/widgets/asset/b;-><init>(Lcom/alipay/android/widgets/asset/AssetWidgetGroup;Lcom/alipay/mobile/framework/service/ext/security/AuthService;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->c()V

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->h:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    invoke-virtual {v0}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->ackClick()V

    goto :goto_0
.end method

.method public onReturn()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->c()V

    return-void
.end method

.method public setContext(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->c:Landroid/app/Activity;

    return-void
.end method

.method public setContext(Lcom/alipay/mobile/framework/MicroApplicationContext;)V
    .locals 1

    iput-object p1, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->i:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->d:Ljava/lang/String;

    return-void
.end method
