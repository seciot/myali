.class public Lcom/alipay/android/mini/util/MiniSmsReader;
.super Ljava/lang/Object;


# instance fields
.field private a:Z

.field private b:Lcom/alipay/android/lib/phone/SmsReader;

.field private c:Lcom/alipay/android/mini/event/MiniReadSmsArgs;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:I

.field private h:Ljava/lang/String;

.field private i:Lcom/alipay/android/app/data/ValidatedFrameData;

.field private j:Lcom/alipay/android/mini/window/IUIForm;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Ljava/lang/String;Lcom/alipay/android/app/data/ValidatedFrameData;Lcom/alipay/android/mini/window/IUIForm;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/mini/util/MiniSmsReader;->i:Lcom/alipay/android/app/data/ValidatedFrameData;

    iput-object v0, p0, Lcom/alipay/android/mini/util/MiniSmsReader;->j:Lcom/alipay/android/mini/window/IUIForm;

    iput-boolean v1, p0, Lcom/alipay/android/mini/util/MiniSmsReader;->a:Z

    iput-object p2, p0, Lcom/alipay/android/mini/util/MiniSmsReader;->h:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/android/mini/util/MiniSmsReader;->i:Lcom/alipay/android/app/data/ValidatedFrameData;

    iput-object p4, p0, Lcom/alipay/android/mini/util/MiniSmsReader;->j:Lcom/alipay/android/mini/window/IUIForm;

    const-string/jumbo v0, "smsread"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string/jumbo v0, "template"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/util/MiniSmsReader;->d:Ljava/lang/String;

    const-string/jumbo v0, "rules"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v0, v5, :cond_1

    if-lez v0, :cond_0

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/util/MiniSmsReader;->e:Ljava/lang/String;

    :cond_2
    const-string/jumbo v0, "tempGroup"

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/mini/util/MiniSmsReader;->f:I

    const-string/jumbo v0, "readTime"

    const/16 v1, 0xb4

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/mini/util/MiniSmsReader;->g:I

    :cond_3
    new-instance v0, Lcom/alipay/android/mini/util/d;

    invoke-direct {v0, p0}, Lcom/alipay/android/mini/util/d;-><init>(Lcom/alipay/android/mini/util/MiniSmsReader;)V

    iput-object v0, p0, Lcom/alipay/android/mini/util/MiniSmsReader;->c:Lcom/alipay/android/mini/event/MiniReadSmsArgs;

    new-instance v0, Lcom/alipay/android/lib/phone/SmsReader;

    invoke-direct {v0}, Lcom/alipay/android/lib/phone/SmsReader;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/mini/util/MiniSmsReader;->b:Lcom/alipay/android/lib/phone/SmsReader;

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/mini/util/MiniSmsReader;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/util/MiniSmsReader;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/android/mini/event/MiniReadSmsArgs;Lcom/alipay/android/lib/phone/SmsReader;[Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;JJLcom/alipay/android/app/data/ValidatedFrameData;)V
    .locals 10

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    move-wide v8, v0

    move-object v1, v2

    move-wide v2, v8

    :goto_0
    invoke-virtual {p1}, Lcom/alipay/android/lib/phone/SmsReader;->c()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v4, p6

    cmp-long v0, v4, p8

    if-gez v0, :cond_3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->b()V

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    const-wide/16 v4, 0x9c4

    sub-long v2, v4, v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v2, Lcom/alipay/mobile/phonecashier/assist/PhoneCashierAssistService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/phonecashier/assist/PhoneCashierAssistService;

    invoke-virtual {v0}, Lcom/alipay/mobile/phonecashier/assist/PhoneCashierAssistService;->isQihooGuardOpened()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Lcom/alipay/mobile/phonecashier/assist/PhoneCashierAssistService;->isQihooInstalled()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Lcom/alipay/mobile/phonecashier/assist/PhoneCashierAssistService;->readQihooSMS()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v0, p1

    move-object v1, p5

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object/from16 v5, p10

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/android/lib/phone/SmsReader;->a(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;ILcom/alipay/android/app/data/ValidatedFrameData;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->g()V

    move-wide v2, v6

    move-object v1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Lcom/alipay/android/mini/event/MiniReadSmsArgs;->readSuccess(Ljava/lang/String;)V

    :cond_3
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_2
.end method

.method static synthetic b(Lcom/alipay/android/mini/util/MiniSmsReader;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/util/MiniSmsReader;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/android/mini/util/MiniSmsReader;)I
    .locals 1

    iget v0, p0, Lcom/alipay/android/mini/util/MiniSmsReader;->f:I

    return v0
.end method

.method static synthetic d(Lcom/alipay/android/mini/util/MiniSmsReader;)I
    .locals 1

    iget v0, p0, Lcom/alipay/android/mini/util/MiniSmsReader;->g:I

    return v0
.end method

.method static synthetic e(Lcom/alipay/android/mini/util/MiniSmsReader;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/util/MiniSmsReader;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/alipay/android/mini/util/MiniSmsReader;)Lcom/alipay/android/mini/window/IUIForm;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/util/MiniSmsReader;->j:Lcom/alipay/android/mini/window/IUIForm;

    return-object v0
.end method

.method static synthetic g(Lcom/alipay/android/mini/util/MiniSmsReader;)Lcom/alipay/android/mini/event/MiniReadSmsArgs;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/util/MiniSmsReader;->c:Lcom/alipay/android/mini/event/MiniReadSmsArgs;

    return-object v0
.end method

.method static synthetic h(Lcom/alipay/android/mini/util/MiniSmsReader;)Lcom/alipay/android/lib/phone/SmsReader;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/util/MiniSmsReader;->b:Lcom/alipay/android/lib/phone/SmsReader;

    return-object v0
.end method

.method static synthetic i(Lcom/alipay/android/mini/util/MiniSmsReader;)Lcom/alipay/android/app/data/ValidatedFrameData;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/util/MiniSmsReader;->i:Lcom/alipay/android/app/data/ValidatedFrameData;

    return-object v0
.end method

.method static synthetic j(Lcom/alipay/android/mini/util/MiniSmsReader;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/mini/util/MiniSmsReader;->a:Z

    return v0
.end method


# virtual methods
.method public final a()Lcom/alipay/android/mini/event/MiniReadSmsArgs;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/util/MiniSmsReader;->c:Lcom/alipay/android/mini/event/MiniReadSmsArgs;

    return-object v0
.end method

.method public final b()V
    .locals 6

    iget-boolean v0, p0, Lcom/alipay/android/mini/util/MiniSmsReader;->a:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->b()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/mini/util/MiniSmsReader;->a:Z

    iget-object v0, p0, Lcom/alipay/android/mini/util/MiniSmsReader;->c:Lcom/alipay/android/mini/event/MiniReadSmsArgs;

    const-string/jumbo v1, "rules"

    invoke-virtual {v0, v1}, Lcom/alipay/android/mini/event/MiniReadSmsArgs;->getDataByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/mini/util/MiniSmsReader;->c:Lcom/alipay/android/mini/event/MiniReadSmsArgs;

    const-string/jumbo v2, "temp"

    invoke-virtual {v1, v2}, Lcom/alipay/android/mini/event/MiniReadSmsArgs;->getDataByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/mini/util/MiniSmsReader;->a:Z

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/alipay/android/mini/util/MiniSmsReader;->c:Lcom/alipay/android/mini/event/MiniReadSmsArgs;

    const-string/jumbo v2, "read_time"

    invoke-virtual {v1, v2}, Lcom/alipay/android/mini/event/MiniReadSmsArgs;->getDataByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/alipay/android/mini/util/MiniSmsReader;->c:Lcom/alipay/android/mini/event/MiniReadSmsArgs;

    const-string/jumbo v1, "tmp_group"

    invoke-virtual {v0, v1}, Lcom/alipay/android/mini/event/MiniReadSmsArgs;->getDataByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    new-instance v0, Lcom/alipay/android/mini/util/e;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/alipay/android/mini/util/e;-><init>(Lcom/alipay/android/mini/util/MiniSmsReader;I[Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public final c()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/mini/util/MiniSmsReader;->a:Z

    iget-object v0, p0, Lcom/alipay/android/mini/util/MiniSmsReader;->b:Lcom/alipay/android/lib/phone/SmsReader;

    invoke-virtual {v0}, Lcom/alipay/android/lib/phone/SmsReader;->a()V

    iput-object v1, p0, Lcom/alipay/android/mini/util/MiniSmsReader;->i:Lcom/alipay/android/app/data/ValidatedFrameData;

    iput-object v1, p0, Lcom/alipay/android/mini/util/MiniSmsReader;->j:Lcom/alipay/android/mini/window/IUIForm;

    iput-object v1, p0, Lcom/alipay/android/mini/util/MiniSmsReader;->c:Lcom/alipay/android/mini/event/MiniReadSmsArgs;

    iput-object v1, p0, Lcom/alipay/android/mini/util/MiniSmsReader;->d:Ljava/lang/String;

    iput-object v1, p0, Lcom/alipay/android/mini/util/MiniSmsReader;->e:Ljava/lang/String;

    return-void
.end method
