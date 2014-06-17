.class public Lcom/alipay/android/widget/security/ui/RobotXiaoBaoActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/alipay/mobile/commonui/widget/APWebView;

.field private c:Landroid/webkit/WebSettings;

.field private d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private final o:Ljava/lang/String;

.field private final p:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    const-string/jumbo v0, "http://cschannel.d2690.alipay.net/mobile/csrouter.htm?sceneCode=app_yuebao&params=eyJvc0luZm8iOiJhbmRyb2lkIiwic3JjIjoiYXBwIiwidXNlcklkIjoiMjA4ODEwMjEyMTk2NDczMiJ9#"

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/RobotXiaoBaoActivity;->a:Ljava/lang/String;

    const-string/jumbo v0, "app_yuebao"

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/RobotXiaoBaoActivity;->e:Ljava/lang/String;

    const-string/jumbo v0, "app_baoling"

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/RobotXiaoBaoActivity;->f:Ljava/lang/String;

    const-string/jumbo v0, "app_membership_card"

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/RobotXiaoBaoActivity;->g:Ljava/lang/String;

    const-string/jumbo v0, "log_log"

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/RobotXiaoBaoActivity;->h:Ljava/lang/String;

    const-string/jumbo v0, "all_default"

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/RobotXiaoBaoActivity;->i:Ljava/lang/String;

    const-string/jumbo v0, "app_yuebao"

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/RobotXiaoBaoActivity;->j:Ljava/lang/String;

    const-string/jumbo v0, "http://cschannel.d2690.alipay.net/mobile/csrouter.htm?sceneCode=app_yuebao&params=eyJvc0luZm8iOiJhbmRyb2lkIiwic3JjIjoiYXBwIiwidXNlcklkIjoiMjA4ODEwMjEyMTk2NDczMiJ9#"

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/RobotXiaoBaoActivity;->k:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/RobotXiaoBaoActivity;->l:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/RobotXiaoBaoActivity;->m:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/RobotXiaoBaoActivity;->n:Ljava/lang/String;

    const-string/jumbo v0, "url"

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/RobotXiaoBaoActivity;->o:Ljava/lang/String;

    const-string/jumbo v0, "scode"

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/RobotXiaoBaoActivity;->p:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sceneCode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/RobotXiaoBaoActivity;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "&params="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/alipay/android/widget/security/ui/RobotXiaoBaoActivity;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/RobotXiaoBaoActivity;->b:Lcom/alipay/mobile/commonui/widget/APWebView;

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/RobotXiaoBaoActivity;->k:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/commonui/widget/APWebView;->postUrl(Ljava/lang/String;[B)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "{[info=onCreate RobotUrlGenarator.getUrl], [msg=url:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "src"

    const-string/jumbo v2, "app"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo p0, ""

    :cond_0
    const-string/jumbo v1, "userId"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "osInfo"

    const-string/jumbo v2, "android"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    const-string/jumbo v1, "utf-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const-string/jumbo v0, ""

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/alipay/mobile/clientsecurity/R$layout;->bc:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/RobotXiaoBaoActivity;->setContentView(I)V

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->gs:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/RobotXiaoBaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APWebView;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/RobotXiaoBaoActivity;->b:Lcom/alipay/mobile/commonui/widget/APWebView;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/RobotXiaoBaoActivity;->b:Lcom/alipay/mobile/commonui/widget/APWebView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/RobotXiaoBaoActivity;->c:Landroid/webkit/WebSettings;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/RobotXiaoBaoActivity;->c:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/RobotXiaoBaoActivity;->c:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/RobotXiaoBaoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "cache"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/RobotXiaoBaoActivity;->c:Landroid/webkit/WebSettings;

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/RobotXiaoBaoActivity;->c:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/RobotXiaoBaoActivity;->c:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/RobotXiaoBaoActivity;->c:Landroid/webkit/WebSettings;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/RobotXiaoBaoActivity;->c:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/RobotXiaoBaoActivity;->b:Lcom/alipay/mobile/commonui/widget/APWebView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "setDomStorageEnabled"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/RobotXiaoBaoActivity;->b:Lcom/alipay/mobile/commonui/widget/APWebView;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/RobotXiaoBaoActivity;->b:Lcom/alipay/mobile/commonui/widget/APWebView;

    new-instance v1, Lcom/alipay/android/widget/security/ui/RobotXiaoBaoActivity$1;

    invoke-direct {v1, p0}, Lcom/alipay/android/widget/security/ui/RobotXiaoBaoActivity$1;-><init>(Lcom/alipay/android/widget/security/ui/RobotXiaoBaoActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/RobotXiaoBaoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/RobotXiaoBaoActivity;->l:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/RobotXiaoBaoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "scode"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/RobotXiaoBaoActivity;->n:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/RobotXiaoBaoActivity;->l:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/RobotXiaoBaoActivity;->l:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/RobotXiaoBaoActivity;->b:Lcom/alipay/mobile/commonui/widget/APWebView;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/RobotXiaoBaoActivity;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APWebView;->loadUrl(Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/RobotXiaoBaoActivity;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->getRobotUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/RobotXiaoBaoActivity;->k:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/RobotXiaoBaoActivity;->n:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/RobotXiaoBaoActivity;->n:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/RobotXiaoBaoActivity;->n:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/RobotXiaoBaoActivity;->j:Ljava/lang/String;

    :goto_2
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/RobotXiaoBaoActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->isLogin()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v1

    if-nez v1, :cond_8

    :cond_2
    :try_start_1
    const-string/jumbo v0, ""

    invoke-direct {p0, v0}, Lcom/alipay/android/widget/security/ui/RobotXiaoBaoActivity;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{[info=onCreate RobotUrlGenarator.getUrl], [msg=url:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/RobotXiaoBaoActivity;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/RobotXiaoBaoActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getSourceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/RobotXiaoBaoActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getSourceId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "20000032"

    if-ne v0, v1, :cond_4

    const-string/jumbo v0, "app_yuebao"

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/RobotXiaoBaoActivity;->j:Ljava/lang/String;

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/RobotXiaoBaoActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getSourceId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "10000008"

    if-ne v0, v1, :cond_5

    const-string/jumbo v0, "app_baoling"

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/RobotXiaoBaoActivity;->j:Ljava/lang/String;

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/RobotXiaoBaoActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getSourceId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "20000062"

    if-ne v0, v1, :cond_6

    const-string/jumbo v0, "app_membership_card"

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/RobotXiaoBaoActivity;->j:Ljava/lang/String;

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/RobotXiaoBaoActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getSourceId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "20000055"

    if-ne v0, v1, :cond_7

    const-string/jumbo v0, "log_log"

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/RobotXiaoBaoActivity;->j:Ljava/lang/String;

    goto/16 :goto_2

    :cond_7
    const-string/jumbo v0, "all_default"

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/RobotXiaoBaoActivity;->j:Ljava/lang/String;

    goto/16 :goto_2

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "{[info=onCreate RobotUrlGenarator.getUrl], [msg="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_3

    :cond_8
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/RobotXiaoBaoActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/RobotXiaoBaoActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/RobotXiaoBaoActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserName()Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alipay/android/widget/security/ui/RobotXiaoBaoActivity;->a(Ljava/lang/String;)V

    goto/16 :goto_3

    :catch_1
    move-exception v0

    goto/16 :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    packed-switch p1, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/RobotXiaoBaoActivity;->b:Lcom/alipay/mobile/commonui/widget/APWebView;

    const-string/jumbo v1, "javascript:offline()"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
