.class public Lcom/alipay/android/mini/window/MiniEventHandleHelper;
.super Ljava/lang/Object;


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Z

.field private e:Lcom/alipay/android/mini/util/MiniSmsReader;

.field private f:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(ZLjava/lang/String;ZZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/mini/window/MiniEventHandleHelper;->f:Landroid/content/BroadcastReceiver;

    iput-boolean p1, p0, Lcom/alipay/android/mini/window/MiniEventHandleHelper;->a:Z

    iput-object p2, p0, Lcom/alipay/android/mini/window/MiniEventHandleHelper;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/alipay/android/mini/window/MiniEventHandleHelper;->c:Z

    iput-boolean p4, p0, Lcom/alipay/android/mini/window/MiniEventHandleHelper;->d:Z

    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/Object;Lcom/alipay/android/mini/event/MiniEventArgs;Lcom/alipay/android/mini/window/IFormShower;Landroid/app/Activity;Lcom/alipay/android/app/data/BizUiData;Lcom/alipay/android/mini/window/IUIForm;)Z
    .locals 12

    const/4 v9, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/alipay/android/mini/event/MiniEventArgs;->getEventType()Lcom/alipay/android/mini/event/ActionType;

    move-result-object v5

    sget-object v2, Lcom/alipay/android/mini/window/k;->a:[I

    invoke-virtual {v5}, Lcom/alipay/android/mini/event/ActionType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    invoke-interface/range {p5 .. p5}, Lcom/alipay/android/app/data/BizUiData;->c()Lcom/alipay/android/app/data/DataProcessor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/app/data/DataProcessor;->j()Z

    :cond_0
    move v2, v9

    :cond_1
    :goto_0
    return v2

    :pswitch_0
    iget-boolean v2, p0, Lcom/alipay/android/mini/window/MiniEventHandleHelper;->c:Z

    if-nez v2, :cond_0

    invoke-virtual/range {p6 .. p6}, Lcom/alipay/android/mini/window/IUIForm;->h()Lcom/alipay/android/mini/window/UISubForm;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual/range {p6 .. p6}, Lcom/alipay/android/mini/window/IUIForm;->a()V

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    iget-boolean v2, p0, Lcom/alipay/android/mini/window/MiniEventHandleHelper;->a:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/android/mini/window/MiniEventHandleHelper;->b:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/alipay/android/mini/window/MiniEventHandleHelper;->d:Z

    move-object/from16 v0, p4

    invoke-static {v0, v2, p3, v3}, Lcom/alipay/android/mini/util/UIPropUtil;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/alipay/android/mini/window/IFormShower;Z)V

    move v2, v9

    goto :goto_0

    :cond_3
    invoke-interface/range {p5 .. p5}, Lcom/alipay/android/app/data/BizUiData;->c()Lcom/alipay/android/app/data/DataProcessor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/app/data/DataProcessor;->g()Z

    move-result v2

    goto :goto_0

    :pswitch_1
    const/4 v2, 0x0

    move-object/from16 v0, p4

    invoke-static {v0, v2}, Lcom/alipay/android/mini/util/UIPropUtil;->a(Landroid/app/Activity;I)V

    invoke-virtual/range {p6 .. p6}, Lcom/alipay/android/mini/window/IUIForm;->d()V

    invoke-static {}, Lcom/alipay/android/mini/window/GuideWindow;->a()Lcom/alipay/android/mini/window/GuideWindow;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/mini/window/GuideWindow;->b()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual/range {p6 .. p6}, Lcom/alipay/android/mini/window/IUIForm;->e()V

    move v2, v9

    goto :goto_0

    :pswitch_2
    if-eqz p3, :cond_4

    invoke-interface {p3}, Lcom/alipay/android/mini/window/IFormShower;->a()V

    :cond_4
    invoke-interface/range {p5 .. p5}, Lcom/alipay/android/app/data/BizUiData;->c()Lcom/alipay/android/app/data/DataProcessor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/app/data/DataProcessor;->j()Z

    move v2, v9

    goto :goto_0

    :pswitch_3
    const-string/jumbo v4, ""

    const-string/jumbo v2, ""

    invoke-virtual {v5}, Lcom/alipay/android/mini/event/ActionType;->g()Lorg/json/JSONObject;

    move-result-object v5

    :try_start_0
    const-string/jumbo v3, "code"

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :try_start_1
    const-string/jumbo v4, "result"

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    :goto_1
    invoke-interface/range {p5 .. p5}, Lcom/alipay/android/app/data/BizUiData;->c()Lcom/alipay/android/app/data/DataProcessor;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Lcom/alipay/android/app/data/DataProcessor;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move v2, v9

    goto :goto_0

    :catch_0
    move-exception v3

    move-object v11, v3

    move-object v3, v4

    move-object v4, v11

    :goto_2
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :pswitch_4
    const-string/jumbo v2, "message"

    invoke-virtual {p2, v2}, Lcom/alipay/android/mini/event/MiniEventArgs;->getDataByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p3, v2}, Lcom/alipay/android/mini/window/IFormShower;->a(Ljava/lang/String;)V

    move v2, v9

    goto/16 :goto_0

    :pswitch_5
    invoke-interface {p3}, Lcom/alipay/android/mini/window/IFormShower;->a()V

    const/4 v2, 0x1

    invoke-virtual/range {p6 .. p6}, Lcom/alipay/android/mini/window/IUIForm;->c()V

    goto/16 :goto_0

    :pswitch_6
    invoke-interface/range {p5 .. p5}, Lcom/alipay/android/app/data/BizUiData;->c()Lcom/alipay/android/app/data/DataProcessor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/app/data/DataProcessor;->f()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    move-object/from16 v0, p6

    invoke-virtual {v0, v3}, Lcom/alipay/android/mini/window/IUIForm;->a([Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_7
    move-object/from16 v0, p6

    invoke-virtual {v0, v5}, Lcom/alipay/android/mini/window/IUIForm;->a(Lcom/alipay/android/mini/event/ActionType;)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object/from16 v0, p6

    invoke-virtual {v0, v5}, Lcom/alipay/android/mini/window/IUIForm;->b(Lcom/alipay/android/mini/event/ActionType;)Z

    move-result v3

    :cond_5
    if-eqz v3, :cond_13

    move-object/from16 v0, p6

    invoke-virtual {v0, p1}, Lcom/alipay/android/mini/window/IUIForm;->a(Ljava/lang/Object;)V

    move-object/from16 v0, p6

    instance-of v2, v0, Lcom/alipay/android/mini/window/UIFormToast;

    if-eqz v2, :cond_6

    move-object/from16 v2, p6

    check-cast v2, Lcom/alipay/android/mini/window/UIFormToast;

    invoke-virtual {v2}, Lcom/alipay/android/mini/window/UIFormToast;->p()Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v2, p6

    check-cast v2, Lcom/alipay/android/mini/window/UIFormToast;

    invoke-virtual {v2}, Lcom/alipay/android/mini/window/UIFormToast;->q()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Lcom/alipay/android/mini/window/IUIForm;->a([Ljava/lang/String;)V

    move v2, v3

    goto/16 :goto_0

    :cond_6
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Lcom/alipay/android/mini/window/IUIForm;->a([Ljava/lang/String;)V

    move v2, v3

    goto/16 :goto_0

    :pswitch_8
    invoke-virtual/range {p6 .. p6}, Lcom/alipay/android/mini/window/IUIForm;->o()V

    invoke-interface/range {p5 .. p5}, Lcom/alipay/android/app/data/BizUiData;->c()Lcom/alipay/android/app/data/DataProcessor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/app/data/DataProcessor;->k()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    move-object/from16 v0, p6

    invoke-virtual {v0, v3}, Lcom/alipay/android/mini/window/IUIForm;->a([Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_9
    invoke-virtual {v5}, Lcom/alipay/android/mini/event/ActionType;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/android/mini/util/ActionUtil;->b(Ljava/lang/String;)V

    move v2, v9

    goto/16 :goto_0

    :pswitch_a
    iget-boolean v2, p0, Lcom/alipay/android/mini/window/MiniEventHandleHelper;->d:Z

    if-nez v2, :cond_7

    new-instance v2, Lcom/alipay/android/mini/window/i;

    move-object/from16 v0, p4

    invoke-direct {v2, p0, v0}, Lcom/alipay/android/mini/window/i;-><init>(Lcom/alipay/android/mini/window/MiniEventHandleHelper;Landroid/app/Activity;)V

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_7
    move-object/from16 v0, p6

    invoke-virtual {v0, p2}, Lcom/alipay/android/mini/window/IUIForm;->a(Lcom/alipay/android/mini/event/MiniEventArgs;)V

    move v2, v9

    goto/16 :goto_0

    :pswitch_b
    move-object/from16 v0, p6

    invoke-virtual {v0, v5}, Lcom/alipay/android/mini/window/IUIForm;->c(Lcom/alipay/android/mini/event/ActionType;)V

    move v2, v9

    goto/16 :goto_0

    :pswitch_c
    invoke-virtual/range {p6 .. p6}, Lcom/alipay/android/mini/window/IUIForm;->m()Z

    move-result v2

    goto/16 :goto_0

    :pswitch_d
    invoke-virtual {v5}, Lcom/alipay/android/mini/event/ActionType;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/android/mini/util/ActionUtil;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    array-length v3, v2

    if-lez v3, :cond_9

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/alipay/android/mini/window/MiniEventHandleHelper;->e:Lcom/alipay/android/mini/util/MiniSmsReader;

    if-nez v3, :cond_8

    new-instance v3, Lcom/alipay/android/mini/util/MiniSmsReader;

    invoke-virtual {v5}, Lcom/alipay/android/mini/event/ActionType;->a()Lorg/json/JSONObject;

    move-result-object v4

    invoke-interface/range {p5 .. p5}, Lcom/alipay/android/app/data/BizUiData;->g()Lcom/alipay/android/app/data/ValidatedFrameData;

    move-result-object v5

    move-object/from16 v0, p6

    invoke-direct {v3, v4, v2, v5, v0}, Lcom/alipay/android/mini/util/MiniSmsReader;-><init>(Lorg/json/JSONObject;Ljava/lang/String;Lcom/alipay/android/app/data/ValidatedFrameData;Lcom/alipay/android/mini/window/IUIForm;)V

    iput-object v3, p0, Lcom/alipay/android/mini/window/MiniEventHandleHelper;->e:Lcom/alipay/android/mini/util/MiniSmsReader;

    :cond_8
    iget-object v2, p0, Lcom/alipay/android/mini/window/MiniEventHandleHelper;->e:Lcom/alipay/android/mini/util/MiniSmsReader;

    invoke-virtual {v2}, Lcom/alipay/android/mini/util/MiniSmsReader;->b()V

    :cond_9
    const/4 v2, 0x1

    goto/16 :goto_0

    :pswitch_e
    move-object/from16 v0, p6

    invoke-virtual {v0, p2}, Lcom/alipay/android/mini/window/IUIForm;->b(Lcom/alipay/android/mini/event/MiniEventArgs;)V

    move v2, v9

    goto/16 :goto_0

    :pswitch_f
    move-object/from16 v0, p6

    invoke-virtual {v0, v5}, Lcom/alipay/android/mini/window/IUIForm;->d(Lcom/alipay/android/mini/event/ActionType;)V

    new-instance v2, Lcom/alipay/android/mini/event/MiniEventArgs;

    sget-object v3, Lcom/alipay/android/mini/event/ActionType;->B:Lcom/alipay/android/mini/event/ActionType;

    invoke-direct {v2, v3}, Lcom/alipay/android/mini/event/MiniEventArgs;-><init>(Lcom/alipay/android/mini/event/ActionType;)V

    move-object/from16 v0, p6

    move-object/from16 v1, p6

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/mini/window/IUIForm;->a(Ljava/lang/Object;Lcom/alipay/android/app/event/IEventArgs;)Z

    const/4 v2, 0x1

    goto/16 :goto_0

    :pswitch_10
    iget-object v2, p0, Lcom/alipay/android/mini/window/MiniEventHandleHelper;->f:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_a

    new-instance v2, Lcom/alipay/android/mini/window/j;

    move-object/from16 v0, p5

    invoke-direct {v2, p0, v0}, Lcom/alipay/android/mini/window/j;-><init>(Lcom/alipay/android/mini/window/MiniEventHandleHelper;Lcom/alipay/android/app/data/BizUiData;)V

    iput-object v2, p0, Lcom/alipay/android/mini/window/MiniEventHandleHelper;->f:Landroid/content/BroadcastReceiver;

    invoke-static/range {p4 .. p4}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v4, "com.alipay.security.namecertified"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/android/mini/window/MiniEventHandleHelper;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v4, v3}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    :cond_a
    const-string/jumbo v2, "alipays://platformapi/startApp?appId=20000038"

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Lcom/alipay/android/mini/window/IUIForm;->c(Ljava/lang/String;)V

    new-instance v2, Lcom/alipay/android/mini/event/MiniEventArgs;

    sget-object v3, Lcom/alipay/android/mini/event/ActionType;->B:Lcom/alipay/android/mini/event/ActionType;

    invoke-direct {v2, v3}, Lcom/alipay/android/mini/event/MiniEventArgs;-><init>(Lcom/alipay/android/mini/event/ActionType;)V

    move-object/from16 v0, p6

    move-object/from16 v1, p6

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/mini/window/IUIForm;->a(Ljava/lang/Object;Lcom/alipay/android/app/event/IEventArgs;)Z

    const/4 v2, 0x1

    goto/16 :goto_0

    :pswitch_11
    invoke-virtual {v5}, Lcom/alipay/android/mini/event/ActionType;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/android/mini/util/ActionUtil;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v3, v2

    if-lez v3, :cond_0

    const/4 v3, 0x0

    aget-object v2, v2, v3

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Lcom/alipay/android/mini/window/IUIForm;->c(Ljava/lang/String;)V

    move v2, v9

    goto/16 :goto_0

    :pswitch_12
    invoke-virtual {v5}, Lcom/alipay/android/mini/event/ActionType;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/android/mini/util/ActionUtil;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    array-length v2, v3

    const/4 v4, 0x1

    if-le v2, v4, :cond_0

    array-length v2, v3

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    array-length v2, v3

    div-int/lit8 v2, v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    array-length v2, v3

    div-int/lit8 v2, v2, 0x2

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_3
    array-length v6, v3

    if-ge v2, v6, :cond_c

    rem-int/lit8 v6, v2, 0x2

    if-nez v6, :cond_b

    div-int/lit8 v6, v2, 0x2

    aget-object v7, v3, v2

    aput-object v7, v4, v6

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_b
    div-int/lit8 v6, v2, 0x2

    aget-object v7, v3, v2

    aput-object v7, v5, v6

    goto :goto_4

    :cond_c
    move-object/from16 v0, p4

    invoke-static {v0, v5, v4}, Lcom/alipay/android/mini/util/UIPropUtil;->a(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;)V

    move v2, v9

    goto/16 :goto_0

    :pswitch_13
    invoke-virtual {v5}, Lcom/alipay/android/mini/event/ActionType;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/android/mini/util/ActionUtil;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    array-length v2, v6

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    aget-object v2, v6, v2

    const-string/jumbo v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_f

    array-length v2, v5

    new-array v4, v2, [Ljava/lang/String;

    array-length v2, v5

    new-array v3, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_5
    array-length v7, v5

    if-ge v2, v7, :cond_e

    aget-object v7, v5, v2

    const-string/jumbo v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_d

    array-length v8, v7

    const/4 v10, 0x2

    if-ne v8, v10, :cond_d

    const/4 v8, 0x0

    aget-object v8, v7, v8

    aput-object v8, v4, v2

    const/4 v8, 0x1

    aget-object v7, v7, v8

    aput-object v7, v3, v2

    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_e
    instance-of v2, p1, Lcom/alipay/android/mini/uielement/UILink;

    if-eqz v2, :cond_f

    check-cast p1, Lcom/alipay/android/mini/uielement/UILink;

    invoke-virtual {p1}, Lcom/alipay/android/mini/uielement/UILink;->j()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v2, 0x1

    aget-object v5, v6, v2

    const/4 v2, 0x2

    aget-object v6, v6, v2

    move-object/from16 v2, p4

    move-object/from16 v7, p6

    invoke-static/range {v2 .. v8}, Lcom/alipay/android/mini/util/UIPropUtil;->a(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/android/mini/window/IUIForm;Ljava/lang/String;)V

    :cond_f
    move v2, v9

    goto/16 :goto_0

    :pswitch_14
    invoke-virtual {v5}, Lcom/alipay/android/mini/event/ActionType;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/android/mini/util/ActionUtil;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    const/4 v3, 0x0

    aget-object v3, v2, v3

    const/4 v4, 0x1

    aget-object v2, v2, v4

    move-object/from16 v0, p6

    invoke-virtual {v0, v3}, Lcom/alipay/android/mini/window/IUIForm;->d(Ljava/lang/String;)Lcom/alipay/android/mini/uielement/BaseElement;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/alipay/android/mini/uielement/BaseElement;->a(Ljava/lang/String;)V

    move v2, v9

    goto/16 :goto_0

    :pswitch_15
    invoke-virtual {v5}, Lcom/alipay/android/mini/event/ActionType;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/android/mini/util/ActionUtil;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    const/4 v3, 0x0

    aget-object v3, v2, v3

    const/4 v4, 0x1

    aget-object v4, v2, v4

    move-object/from16 v0, p6

    invoke-virtual {v0, v3}, Lcom/alipay/android/mini/window/IUIForm;->d(Ljava/lang/String;)Lcom/alipay/android/mini/uielement/BaseElement;

    move-result-object v3

    instance-of v2, v3, Lcom/alipay/android/mini/uielement/UIInput;

    if-eqz v2, :cond_10

    move-object v2, v3

    check-cast v2, Lcom/alipay/android/mini/uielement/UIInput;

    invoke-virtual {v2}, Lcom/alipay/android/mini/uielement/UIInput;->z()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    check-cast v3, Lcom/alipay/android/mini/uielement/UIInput;

    invoke-virtual {v3}, Lcom/alipay/android/mini/uielement/UIInput;->z()Landroid/widget/EditText;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_10
    move v2, v9

    goto/16 :goto_0

    :pswitch_16
    invoke-virtual {v5}, Lcom/alipay/android/mini/event/ActionType;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/android/mini/util/ActionUtil;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v3, v2

    if-lez v3, :cond_0

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.DIAL"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "tel:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    aget-object v2, v2, v6

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v2, 0x1000

    invoke-virtual {v3, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    move v2, v9

    goto/16 :goto_0

    :pswitch_17
    invoke-static/range {p4 .. p4}, Lcom/alipay/android/mini/util/UIPropUtil;->a(Landroid/content/Context;)V

    move v2, v9

    goto/16 :goto_0

    :pswitch_18
    move-object/from16 v0, p6

    iget-object v2, v0, Lcom/alipay/android/mini/window/IUIForm;->v:Lorg/json/JSONArray;

    if-eqz v2, :cond_0

    move-object/from16 v0, p6

    iget-object v2, v0, Lcom/alipay/android/mini/window/IUIForm;->v:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    new-array v4, v3, [Lcom/alipay/android/mini/uielement/ElementAction;

    new-array v5, v3, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v3, :cond_12

    move-object/from16 v0, p6

    iget-object v6, v0, Lcom/alipay/android/mini/window/IUIForm;->v:Lorg/json/JSONArray;

    invoke-virtual {v6, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    if-eqz v6, :cond_11

    const-string/jumbo v7, "text"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_11

    const-string/jumbo v7, "text"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v2

    const-string/jumbo v7, "action"

    invoke-static {v6, v7}, Lcom/alipay/android/mini/uielement/ElementAction;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/alipay/android/mini/uielement/ElementAction;

    move-result-object v6

    aput-object v6, v4, v2

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_12
    move-object/from16 v0, p4

    move-object/from16 v1, p6

    invoke-static {v0, v4, v5, v1}, Lcom/alipay/android/mini/util/UIPropUtil;->a(Landroid/content/Context;[Lcom/alipay/android/mini/uielement/ElementAction;[Ljava/lang/String;Lcom/alipay/android/mini/window/IUIForm;)V

    move v2, v9

    goto/16 :goto_0

    :catch_1
    move-exception v4

    goto/16 :goto_2

    :cond_13
    move v2, v3

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
    .end packed-switch
.end method
