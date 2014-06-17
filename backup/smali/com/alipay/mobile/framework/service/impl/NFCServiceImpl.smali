.class public Lcom/alipay/mobile/framework/service/impl/NFCServiceImpl;
.super Lcom/alipay/mobile/framework/service/NFCService;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field private a:Landroid/nfc/NfcAdapter;

.field private b:Lcom/alipay/mobile/nfc/biz/processor/NFCBizProcessorManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/NFCService;-><init>()V

    return-void
.end method

.method private a()Landroid/nfc/NdefMessage;
    .locals 6

    const/4 v1, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/impl/NFCServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v2, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    if-eqz v0, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "---------->log in: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->isLogin()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/alipay/mobile/framework/service/impl/NFCServiceImpl;->a(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_0
    new-instance v1, Landroid/nfc/NdefRecord;

    const/4 v2, 0x2

    const-string/jumbo v3, "application/com.alipay.mobile.nfc"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    new-array v4, v5, [B

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    new-instance v0, Landroid/nfc/NdefMessage;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/nfc/NdefRecord;

    aput-object v1, v2, v5

    invoke-direct {v0, v2}, Landroid/nfc/NdefMessage;-><init>([Landroid/nfc/NdefRecord;)V

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/alipay/mobile/framework/service/impl/NFCServiceImpl;)Landroid/nfc/NdefMessage;
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/impl/NFCServiceImpl;->a()Landroid/nfc/NdefMessage;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)Ljava/lang/String;
    .locals 4

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v2, "avatar"

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserAvatar()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "name"

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "loginid"

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getLogonId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "alipays-beam"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Landroid/app/Activity;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/framework/service/impl/NFCServiceImpl;->isAlipayNfcEnable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/framework/service/impl/NFCServiceImpl;->a:Landroid/nfc/NfcAdapter;

    iget-object v1, p0, Lcom/alipay/mobile/framework/service/impl/NFCServiceImpl;->a:Landroid/nfc/NfcAdapter;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static b()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Landroid/app/Activity;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_1

    move v2, v1

    :goto_0
    if-eqz v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/framework/service/impl/NFCServiceImpl;->isAlipayNfcEnable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/framework/service/impl/NFCServiceImpl;->a:Landroid/nfc/NfcAdapter;

    iget-object v2, p0, Lcom/alipay/mobile/framework/service/impl/NFCServiceImpl;->a:Landroid/nfc/NfcAdapter;

    if-nez v2, :cond_2

    :cond_0
    :goto_1
    return v0

    :cond_1
    move v2, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public disableAlipayNfc(Landroid/content/Context;)V
    .locals 4

    invoke-static {}, Lcom/alipay/mobile/framework/service/impl/NFCServiceImpl;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/alipay/mobile/nfc/ui/NFCEntry;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    :cond_0
    return-void
.end method

.method public disableForegroundDispatch(Landroid/app/Activity;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "activity can not be null !"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/alipay/mobile/framework/service/impl/NFCServiceImpl;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "disableForegroundDispatch: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/impl/NFCServiceImpl;->a:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0, p1}, Landroid/nfc/NfcAdapter;->disableForegroundDispatch(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    goto :goto_0
.end method

.method public enableAlipayNfc(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x1

    invoke-static {}, Lcom/alipay/mobile/framework/service/impl/NFCServiceImpl;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/alipay/mobile/nfc/ui/NFCEntry;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v4, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    :cond_0
    return-void
.end method

.method public enableForegroundDispatch(Landroid/app/Activity;)V
    .locals 7

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "activity can not be null !"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/alipay/mobile/framework/service/impl/NFCServiceImpl;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "enableForegroundDispatch: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/alipay/mobile/nfc/ui/NFCEntry;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [[Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-class v5, Landroid/nfc/tech/IsoDep;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-class v5, Landroid/nfc/tech/Ndef;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/content/IntentFilter;

    const/4 v3, 0x0

    new-instance v4, Landroid/content/IntentFilter;

    const-string/jumbo v5, "android.nfc.action.TECH_DISCOVERED"

    const-string/jumbo v6, "*/*"

    invoke-direct {v4, v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/alipay/mobile/framework/service/impl/NFCServiceImpl;->a:Landroid/nfc/NfcAdapter;

    invoke-virtual {v3, p1, v0, v2, v1}, Landroid/nfc/NfcAdapter;->enableForegroundDispatch(Landroid/app/Activity;Landroid/app/PendingIntent;[Landroid/content/IntentFilter;[[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    goto :goto_0
.end method

.method public getNFCBizProcessorManager()Lcom/alipay/mobile/nfc/biz/processor/NFCBizProcessorManager;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/impl/NFCServiceImpl;->b:Lcom/alipay/mobile/nfc/biz/processor/NFCBizProcessorManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/mobile/nfc/biz/processor/impl/NFCBizProcessorManagerImpl;

    invoke-direct {v0}, Lcom/alipay/mobile/nfc/biz/processor/impl/NFCBizProcessorManagerImpl;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/impl/NFCServiceImpl;->b:Lcom/alipay/mobile/nfc/biz/processor/NFCBizProcessorManager;

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/impl/NFCServiceImpl;->b:Lcom/alipay/mobile/nfc/biz/processor/NFCBizProcessorManager;

    return-object v0
.end method

.method public hasFeatureNfc(Landroid/content/Context;)Z
    .locals 2

    invoke-static {}, Lcom/alipay/mobile/framework/service/impl/NFCServiceImpl;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "android.hardware.nfc"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAlipayNfcEnable(Landroid/content/Context;)Z
    .locals 6

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/framework/service/impl/NFCServiceImpl;->isNfcEnable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v3, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/alipay/mobile/nfc/ui/NFCEntry;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eq v2, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public isNfcEnable(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/alipay/mobile/framework/service/impl/NFCServiceImpl;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "void com.alipay.mobile.framework.app.ui.BaseActivity.onCreate(Bundle)"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.onCreate(Bundle)"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "void com.alipay.mobile.framework.app.ui.BaseActivity.onResume()"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.onResume()"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "void com.alipay.mobile.framework.app.ui.BaseActivity.onPause()"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.onPause()"

    aput-object v2, v0, v1

    invoke-static {}, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->getInstance()Lcom/alipay/mobile/aspect/FrameworkPointCutManager;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/framework/service/impl/NFCServiceImpl$2;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/framework/service/impl/NFCServiceImpl$2;-><init>(Lcom/alipay/mobile/framework/service/impl/NFCServiceImpl;)V

    invoke-virtual {v1, v0, v2}, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->registerPointCutAdvice([Ljava/lang/String;Lcom/alipay/mobile/aspect/Advice;)V

    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public registerNFCMsgSender(Landroid/app/Activity;)V
    .locals 3

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "activity and context can not be null !"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/alipay/mobile/framework/service/impl/NFCServiceImpl;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/impl/NFCServiceImpl;->a:Landroid/nfc/NfcAdapter;

    new-instance v1, Lcom/alipay/mobile/framework/service/impl/NFCServiceImpl$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/framework/service/impl/NFCServiceImpl$1;-><init>(Lcom/alipay/mobile/framework/service/impl/NFCServiceImpl;)V

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/app/Activity;

    invoke-virtual {v0, v1, p1, v2}, Landroid/nfc/NfcAdapter;->setNdefPushMessageCallback(Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;Landroid/app/Activity;[Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    goto :goto_0
.end method

.method public setNdefPushMessage(Landroid/app/Activity;)V
    .locals 3

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "activity and context can not be null !"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/alipay/mobile/framework/service/impl/NFCServiceImpl;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/impl/NFCServiceImpl;->a:Landroid/nfc/NfcAdapter;

    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/impl/NFCServiceImpl;->a()Landroid/nfc/NdefMessage;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/app/Activity;

    invoke-virtual {v0, v1, p1, v2}, Landroid/nfc/NfcAdapter;->setNdefPushMessage(Landroid/nfc/NdefMessage;Landroid/app/Activity;[Landroid/app/Activity;)V

    :cond_1
    return-void
.end method
