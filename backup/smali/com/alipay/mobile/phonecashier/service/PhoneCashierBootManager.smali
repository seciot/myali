.class public Lcom/alipay/mobile/phonecashier/service/PhoneCashierBootManager;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/alipay/mobile/framework/MicroApplicationContext;

.field private b:Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;

.field private c:Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lcom/alipay/android/app/IRemoteServiceCallback;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/framework/MicroApplicationContext;Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierBootManager;->d:Ljava/lang/String;

    new-instance v0, Lcom/alipay/mobile/phonecashier/service/a;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/phonecashier/service/a;-><init>(Lcom/alipay/mobile/phonecashier/service/PhoneCashierBootManager;)V

    iput-object v0, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierBootManager;->f:Lcom/alipay/android/app/IRemoteServiceCallback;

    iput-object p1, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierBootManager;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    iput-object p2, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierBootManager;->b:Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;

    iput-object p4, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierBootManager;->c:Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;

    iput-object p3, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierBootManager;->e:Ljava/lang/String;

    const-class v0, Lcom/alipay/mobile/phonecashier/assist/PhoneCashierAssistService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/phonecashier/assist/PhoneCashierAssistService;

    invoke-virtual {v0}, Lcom/alipay/mobile/phonecashier/assist/PhoneCashierAssistService;->getUserInfoSessionId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierBootManager;->d:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/phonecashier/service/PhoneCashierBootManager;)Lcom/alipay/mobile/framework/MicroApplicationContext;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierBootManager;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 7

    const/16 v0, -0x1e61

    const/4 v6, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierBootManager;->d:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierBootManager;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierBootManager;->c:Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;

    const/16 v1, -0x1e60

    const-string/jumbo v2, "\u7cfb\u7edf\u7e41\u5fd9\u8bf7\u7a0d\u5019\u91cd\u8bd5\uff01"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;->onPayFailed(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    sput-boolean v6, Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;->a:Z

    :goto_0
    return-void

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierBootManager;->b:Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;

    iget-object v2, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierBootManager;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierBootManager;->d:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/alipay/mobile/phonecashier/service/util/PhoneCashierUtil;->a(Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierBootManager;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/android/app/helper/PayHelper;->a(Landroid/content/Context;)Lcom/alipay/android/app/helper/PayHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierBootManager;->f:Lcom/alipay/android/app/IRemoteServiceCallback;

    invoke-virtual {v2, v1, v3}, Lcom/alipay/android/app/helper/PayHelper;->a(Ljava/lang/String;Lcom/alipay/android/app/IRemoteServiceCallback;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "(\".*);(.*\")"

    const-string/jumbo v3, "$1-$2"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ";"

    invoke-static {v1, v2}, Lcom/alipay/mobile/phonecashier/service/util/PhoneCashierUtil;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "resultStatus"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "memo"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",memo:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-eqz v2, :cond_7

    const-string/jumbo v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    const/4 v0, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    const/16 v2, 0x2328

    if-eq v0, v2, :cond_2

    const/16 v2, 0x1f40

    if-ne v0, v2, :cond_6

    :cond_2
    new-instance v2, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierPaymentResult;

    invoke-direct {v2}, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierPaymentResult;-><init>()V

    const-string/jumbo v4, "result"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    const-string/jumbo v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    const/4 v3, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "\"&"

    invoke-static {v1, v3}, Lcom/alipay/mobile/phonecashier/service/util/PhoneCashierUtil;->b(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string/jumbo v4, "body"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierPaymentResult;->setBody(Ljava/lang/String;)V

    const-string/jumbo v4, "notify_url"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierPaymentResult;->setNotifyUrl(Ljava/lang/String;)V

    const-string/jumbo v4, "out_trade_no"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierPaymentResult;->setOutTradeNo(Ljava/lang/String;)V

    const-string/jumbo v4, "partner"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierPaymentResult;->setPartner(Ljava/lang/String;)V

    const-string/jumbo v4, "seller"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierPaymentResult;->setSeller(Ljava/lang/String;)V

    const-string/jumbo v4, "subject"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierPaymentResult;->setSubject(Ljava/lang/String;)V

    const-string/jumbo v4, "total_fee"

    invoke-virtual {v2, v4}, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierPaymentResult;->setTotalFee(Ljava/lang/String;)V

    const-string/jumbo v4, "call_back_url"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierPaymentResult;->setCallBackUrl(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierPaymentResult;->setOriginalString(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierPaymentResult;->setResultCode(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v0, "com.alipay.mobile.basebiz.TRADE_STATUS_CHANGED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierBootManager;->b:Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierBootManager;->b:Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->getBizType()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "confirm_goods"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    const-string/jumbo v0, "phonecashier.pay.success"

    const-string/jumbo v3, "phonecashier.pay.success"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_4
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    :try_start_3
    iget-object v0, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierBootManager;->c:Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;->onPaySuccess(Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierPaymentResult;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    sput-boolean v6, Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;->a:Z

    goto/16 :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v1, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierBootManager;->c:Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;

    const/16 v2, -0x22b8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;->onPayFailed(ILjava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    sput-boolean v6, Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;->a:Z

    goto/16 :goto_0

    :cond_6
    const/16 v2, 0x2710

    if-ne v0, v2, :cond_8

    :try_start_6
    const-string/jumbo v2, "result"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierPaymentResult;

    invoke-direct {v2}, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierPaymentResult;-><init>()V

    if-eqz v1, :cond_8

    const-string/jumbo v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string/jumbo v3, "BANK_CARD-"

    const-string/jumbo v4, "BANK_CARD;"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierPaymentResult;->setResultCode(I)V

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierPaymentResult;->setResult(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierBootManager;->c:Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;->onPaySuccess(Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierPaymentResult;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    sput-boolean v6, Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;->a:Z

    goto/16 :goto_0

    :cond_7
    :try_start_7
    iget-object v1, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierBootManager;->c:Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;

    const/16 v2, -0x1e61

    const-string/jumbo v4, "\u652f\u4ed8\u5931\u8d25"

    invoke-interface {v1, v2, v4}, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;->onPayFailed(ILjava/lang/String;)V

    :cond_8
    iget-object v1, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierBootManager;->c:Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;

    invoke-interface {v1, v0, v3}, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;->onPayFailed(ILjava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    sput-boolean v6, Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;->a:Z

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    sput-boolean v6, Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;->a:Z

    throw v0
.end method
