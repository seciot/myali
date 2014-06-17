.class public abstract Lcom/alipay/mobile/alipassapp/ui/BasicConfirmActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
.end annotation


# static fields
.field public static a:Ljava/lang/String;


# instance fields
.field protected b:Ljava/lang/String;

.field protected c:J

.field protected d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

.field protected e:Ljava/lang/String;

.field protected f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "BasicConfirmActivity"

    sput-object v0, Lcom/alipay/mobile/alipassapp/ui/BasicConfirmActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/BasicConfirmActivity;->b:Ljava/lang/String;

    iput-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/BasicConfirmActivity;->e:Ljava/lang/String;

    iput-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/BasicConfirmActivity;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 15
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/BasicConfirmActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v4

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/BasicConfirmActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->MONITOR:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v2, "kf"

    const-string/jumbo v8, "KJ"

    iget-object v9, p0, Lcom/alipay/mobile/alipassapp/ui/BasicConfirmActivity;->b:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "-"

    const/4 v4, 0x5

    new-array v12, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "kf"

    aput-object v5, v12, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "orderpay"

    aput-object v5, v12, v4

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v13, p0, Lcom/alipay/mobile/alipassapp/ui/BasicConfirmActivity;->c:J

    sub-long/2addr v6, v13

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v12, v4

    const/4 v4, 0x3

    const-string/jumbo v5, "y"

    aput-object v5, v12, v4

    const/4 v4, 0x4

    const-string/jumbo v5, "alipayclient"

    aput-object v5, v12, v4

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-static/range {v0 .. v12}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/BasicConfirmActivity;->finish()V

    return-void
.end method

.method protected final a(Lcom/alipay/livetradeprod/core/model/rpc/SoundWavePayRes;)V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/BasicConfirmActivity;->dismissProgressDialog()V

    if-eqz p1, :cond_3

    iget-boolean v0, p1, Lcom/alipay/livetradeprod/core/model/rpc/SoundWavePayRes;->success:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/livetradeprod/core/model/rpc/SoundWavePayRes;->attachAction:Ljava/lang/String;

    const-string/jumbo v1, "DELSEED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/BasicConfirmActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/security/otp/OtpManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/otp/OtpManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/otp/OtpManager;->deleteSeed()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    :cond_0
    iget-object v0, p1, Lcom/alipay/livetradeprod/core/model/rpc/SoundWavePayRes;->tradeNo:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string/jumbo v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/livetradeprod/core/model/rpc/SoundWavePayRes;->resultDes:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/alipassapp/ui/BasicConfirmActivity;->toast(Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_2
    iget-object v1, p1, Lcom/alipay/livetradeprod/core/model/rpc/SoundWavePayRes;->bizSubType:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/alipassapp/ui/BasicConfirmActivity;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_3
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/livetradeprod/core/model/rpc/SoundWavePayRes;->realAmount:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassapp/ui/BasicConfirmActivity;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;)V
    .locals 4
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/alipay/mobile/alipassapp/ui/AlipassAutoPaySuccessActivity;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "message"

    invoke-static {p1}, Lcom/alipay/mobile/common/utils/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u6210\u529f\u4ed8\u6b3e"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "\u5143"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/BasicConfirmActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/BasicConfirmActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v1, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivityForResult(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;I)V

    return-void

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/BasicConfirmActivity;->dismissProgressDialog()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/BasicConfirmActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v4

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/BasicConfirmActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->MONITOR:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v2, "kf"

    const-string/jumbo v8, "KJ"

    iget-object v9, p0, Lcom/alipay/mobile/alipassapp/ui/BasicConfirmActivity;->b:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "-"

    const/4 v4, 0x5

    new-array v12, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "kf"

    aput-object v5, v12, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "callcashier"

    aput-object v5, v12, v4

    const/4 v4, 0x2

    const-string/jumbo v5, ""

    aput-object v5, v12, v4

    const/4 v4, 0x3

    const-string/jumbo v5, "y"

    aput-object v5, v12, v4

    const/4 v4, 0x4

    const-string/jumbo v5, "alipayclient"

    aput-object v5, v12, v4

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-static/range {v0 .. v12}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    new-instance v1, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;

    invoke-direct {v1}, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;-><init>()V

    const-string/jumbo v0, "trade"

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->setBizType(Ljava/lang/String;)V

    if-nez p2, :cond_0

    const-string/jumbo p2, ""

    :cond_0
    invoke-virtual {v1, p2}, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->setBizSubType(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->setOrderNo(Ljava/lang/String;)V

    sget-object v0, Lcom/alipay/mobile/alipassapp/ui/BasicConfirmActivity;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "bizType"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->getBizType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " BizSubType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->getBizSubType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " OrderNo="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->getOrderNo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " OrderToken"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->getOrderToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/BasicConfirmActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v2, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierServcie;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierServcie;

    new-instance v2, Lcom/alipay/mobile/alipassapp/ui/de;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/alipassapp/ui/de;-><init>(Lcom/alipay/mobile/alipassapp/ui/BasicConfirmActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierServcie;->boot(Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;)V

    return-void
.end method

.method protected a(Ljava/lang/String;Z)V
    .locals 1
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/BasicConfirmActivity;->finish()V

    return-void
.end method

.method protected b()V
    .locals 3
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    const-string/jumbo v0, "\u8c03\u7528\u79fb\u52a8\u5feb\u6377\u5931\u8d25"

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/BasicConfirmActivity;->finish()V

    return-void
.end method

.method public c()V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/alipassapp/ui/BasicConfirmActivity;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/BasicConfirmActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/android/app/helper/PayHelperServcie;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/helper/PayHelperServcie;

    invoke-virtual {v0}, Lcom/alipay/android/app/helper/PayHelperServcie;->createLiveConnection()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v0, Lcom/alipay/mobile/alipassapp/ui/BasicConfirmActivity;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/BasicConfirmActivity;->finish()V

    :cond_0
    return-void
.end method
