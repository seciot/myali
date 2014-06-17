.class public Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

# interfaces
.implements Lcom/alipay/mobile/framework/service/ext/security/SmsCheckCallBack;
.implements Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment$SetSimplePwdCallBack;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
    resName = "register_user"
.end annotation


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private d:Lcom/alipay/mobile/security/authcenter/ui/BaseRegisterUserFragment;

.field private e:Landroid/support/v4/app/Fragment;

.field private f:Landroid/support/v4/app/Fragment;

.field private g:Lcom/alipay/mobile/framework/service/ext/security/SmsCheckResultCallBack;

.field private h:Lcom/alipay/mobile/framework/service/ext/security/PwdHistoryClearCallBack;

.field private i:Ljava/lang/String;

.field private j:Lcom/alipay/mobile/security/authcenter/a/f;

.field private k:Ljava/lang/String;

.field private l:Z

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Landroid/support/v4/app/Fragment;

.field private p:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->b:Ljava/util/Map;

    const-string/jumbo v0, "registerFromCommon"

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->i:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->l:Z

    const-string/jumbo v0, "down_input"

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->m:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->n:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->p:Z

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->n:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->n:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v1, 0x0

    new-instance v0, Lcom/alipay/mobile/login/bean/LoginInfo;

    invoke-direct {v0}, Lcom/alipay/mobile/login/bean/LoginInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/login/bean/LoginInfo;->a(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/login/bean/LoginInfo;->b(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/login/bean/LoginInfo;->a(Z)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/login/bean/LoginInfo;->b(Z)V

    invoke-virtual {v0}, Lcom/alipay/mobile/login/bean/LoginInfo;->i()V

    const-string/jumbo v1, "TAOBAO_Q"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/login/bean/LoginInfo;->d(Ljava/lang/String;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "loginInfo"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-string/jumbo v2, "20000009"

    const-string/jumbo v3, "20000008"

    invoke-interface {v0, v2, v3, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u8df3\u8f6c\u5230\u767b\u9646\u9875\u9762\u5f02\u5e38:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/AppLoadException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;ZZZ)V
    .locals 4

    new-instance v0, Lcom/alipay/mobile/login/bean/LoginInfo;

    invoke-direct {v0}, Lcom/alipay/mobile/login/bean/LoginInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/login/bean/LoginInfo;->a(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/login/bean/LoginInfo;->b(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/alipay/mobile/login/bean/LoginInfo;->a(Z)V

    invoke-virtual {v0, p4}, Lcom/alipay/mobile/login/bean/LoginInfo;->b(Z)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "loginInfo"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    if-eqz p2, :cond_0

    const-string/jumbo v0, "registBindToCard"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-string/jumbo v2, "20000009"

    const-string/jumbo v3, "20000008"

    invoke-interface {v0, v2, v3, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u8df3\u8f6c\u5230\u767b\u9646\u9875\u9762\u5f02\u5e38:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/AppLoadException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0
.end method

.method private b(Lcom/alipay/mobile/framework/service/ext/security/SmsCheckResultCallBack;)Lcom/alipay/mobileapp/biz/rpc/register/vo/SendSmsCodeRes;
    .locals 2

    iput-object p1, p0, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->g:Lcom/alipay/mobile/framework/service/ext/security/SmsCheckResultCallBack;

    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->showProgressDialog(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->j:Lcom/alipay/mobile/security/authcenter/a/f;

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/authcenter/a/f;->a(Ljava/lang/String;)Lcom/alipay/mobileapp/biz/rpc/register/vo/SendSmsCodeRes;
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->dismissProgressDialog()V

    throw v0
.end method

.method private b(Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/security/PwdHistoryClearCallBack;)Lcom/alipay/mobileapp/biz/rpc/register/vo/SetMobilePayPwdRes;
    .locals 4

    iput-object p2, p0, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->h:Lcom/alipay/mobile/framework/service/ext/security/PwdHistoryClearCallBack;

    iput-object p1, p0, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->n:Ljava/lang/String;

    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->showProgressDialog(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->j:Lcom/alipay/mobile/security/authcenter/a/f;

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->k:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/alipay/mobile/security/authcenter/a/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobileapp/biz/rpc/register/vo/SetMobilePayPwdRes;
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->dismissProgressDialog()V

    sget-object v1, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->a:Ljava/lang/String;

    throw v0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/security/SmsCheckResultCallBack;)Lcom/alipay/mobileapp/biz/rpc/register/vo/VerifyCheckRes;
    .locals 3

    iput-object p3, p0, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->g:Lcom/alipay/mobile/framework/service/ext/security/SmsCheckResultCallBack;

    iput-object p2, p0, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->m:Ljava/lang/String;

    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->showProgressDialog(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->j:Lcom/alipay/mobile/security/authcenter/a/f;

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, v2}, Lcom/alipay/mobile/security/authcenter/a/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobileapp/biz/rpc/register/vo/VerifyCheckRes;
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->dismissProgressDialog()V

    throw v0
.end method

.method static synthetic b(Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->p:Z

    return v0
.end method

.method private c()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    new-instance v0, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment_;

    invoke-direct {v0}, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment_;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->e:Landroid/support/v4/app/Fragment;

    new-instance v0, Lcom/alipay/mobile/security/authcenter/ui/RegisterDownSmsFragment_;

    invoke-direct {v0}, Lcom/alipay/mobile/security/authcenter/ui/RegisterDownSmsFragment_;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->d:Lcom/alipay/mobile/security/authcenter/ui/BaseRegisterUserFragment;

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->d:Lcom/alipay/mobile/security/authcenter/ui/BaseRegisterUserFragment;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/security/authcenter/ui/BaseRegisterUserFragment;->a(Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->d:Lcom/alipay/mobile/security/authcenter/ui/BaseRegisterUserFragment;

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/authcenter/ui/BaseRegisterUserFragment;->a(Lcom/alipay/mobile/framework/app/ActivityApplication;)V

    new-instance v0, Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment_;

    invoke-direct {v0}, Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment_;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->f:Landroid/support/v4/app/Fragment;

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->b:Ljava/util/Map;

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->d:Lcom/alipay/mobile/security/authcenter/ui/BaseRegisterUserFragment;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->b:Ljava/util/Map;

    const/16 v1, 0x28

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->e:Landroid/support/v4/app/Fragment;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->b:Ljava/util/Map;

    const/16 v1, 0x1e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->f:Landroid/support/v4/app/Fragment;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic c(Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->c()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/alipay/mobile/framework/service/ext/security/SmsCheckResultCallBack;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0, p1}, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->b(Lcom/alipay/mobile/framework/service/ext/security/SmsCheckResultCallBack;)Lcom/alipay/mobileapp/biz/rpc/register/vo/SendSmsCodeRes;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/security/PwdHistoryClearCallBack;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->b(Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/security/PwdHistoryClearCallBack;)Lcom/alipay/mobileapp/biz/rpc/register/vo/SetMobilePayPwdRes;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/security/SmsCheckResultCallBack;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->b(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/security/SmsCheckResultCallBack;)Lcom/alipay/mobileapp/biz/rpc/register/vo/VerifyCheckRes;

    move-result-object v0

    return-object v0
.end method

.method public final a()V
    .locals 3

    const-string/jumbo v0, "registerFromPack"

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "registerFromWap"

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :try_start_0
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->showProgressDialog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->j:Lcom/alipay/mobile/security/authcenter/a/f;

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/authcenter/a/f;->b(Ljava/lang/String;)Lcom/alipay/mobileapp/biz/rpc/register/vo/RegisterPcToMobileRes;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->a(Lcom/alipay/mobileapp/biz/rpc/register/vo/RegisterPcToMobileRes;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->dismissProgressDialog()V

    sget-object v1, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "pc\u6ce8\u518c\u5f15\u6d41\u901a\u8fc7regid\u83b7\u53d6\u624b\u673a\u53f7\u7801\u5f02\u5e38:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/clientsecurity/R$string;->bW:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->toast(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method protected a(I)V
    .locals 3
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->c()V

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->o:Landroid/support/v4/app/Fragment;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/clientsecurity/R$id;->do:I

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected a(Landroid/support/v4/app/Fragment;)V
    .locals 4
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    iput-object p1, p0, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->o:Landroid/support/v4/app/Fragment;

    instance-of v0, p1, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment_;

    if-eqz v0, :cond_5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "PageTips"

    iget-object v3, p0, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    move-object v0, p1

    check-cast v0, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment_;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment_;->a(Lcom/alipay/mobile/framework/service/ext/security/SmsCheckCallBack;)V

    :cond_0
    :goto_0
    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->do:I

    invoke-virtual {v1, v0, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    const-string/jumbo v0, "registerFromLogin"

    iget-object v2, p0, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->i:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "registerFromPack"

    iget-object v2, p0, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->i:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    instance-of v0, p1, Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment_;

    if-nez v0, :cond_4

    :cond_2
    const-string/jumbo v0, "registerFromCommon"

    iget-object v2, p0, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->i:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    instance-of v0, p1, Lcom/alipay/mobile/security/authcenter/ui/RegisterDownSmsFragment_;

    if-nez v0, :cond_4

    :cond_3
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    :cond_4
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void

    :cond_5
    instance-of v0, p1, Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment_;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->f:Landroid/support/v4/app/Fragment;

    check-cast v0, Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment_;

    iget-object v2, p0, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->c:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-virtual {v0, v2, v3, p0}, Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment_;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment$SetSimplePwdCallBack;)V

    goto :goto_0
.end method

.method protected a(Lcom/alipay/mobileapp/biz/rpc/register/vo/RegisterPcToMobileRes;)V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->dismissProgressDialog()V

    if-eqz p1, :cond_0

    iget v0, p1, Lcom/alipay/mobileapp/biz/rpc/register/vo/RegisterPcToMobileRes;->resultStatus:I

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/alipay/mobileapp/biz/rpc/register/vo/RegisterPcToMobileRes;->getLogonId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->c:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "registerFromCommon"

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->i:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->l:Z

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->a(I)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/Object;I)V
    .locals 8

    const/16 v1, 0x3e8

    const/4 v7, 0x1

    sget-object v0, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->dismissProgressDialog()V

    if-nez p1, :cond_1

    sget-object v0, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/clientsecurity/R$string;->bW:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v7}, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->toast(Ljava/lang/String;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ne p2, v7, :cond_11

    :try_start_0
    instance-of v0, p1, Lcom/alipay/mobileapp/biz/rpc/register/vo/VerifyCheckRes;

    if-eqz v0, :cond_11

    sget-object v0, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->a:Ljava/lang/String;

    check-cast p1, Lcom/alipay/mobileapp/biz/rpc/register/vo/VerifyCheckRes;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->dismissProgressDialog()V

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/clientsecurity/R$string;->bW:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->toast(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/clientsecurity/R$string;->bW:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v7}, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->toast(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    :try_start_1
    iget v0, p1, Lcom/alipay/mobileapp/biz/rpc/register/vo/VerifyCheckRes;->resultStatus:I

    if-ne v0, v1, :cond_5

    const-string/jumbo v0, "Q"

    invoke-virtual {p1}, Lcom/alipay/mobileapp/biz/rpc/register/vo/VerifyCheckRes;->getUserStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "T"

    invoke-virtual {p1}, Lcom/alipay/mobileapp/biz/rpc/register/vo/VerifyCheckRes;->getUserStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->O:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->c:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/alipay/mobile/clientsecurity/R$string;->Q:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alipay/mobile/security/authcenter/ui/aq;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/security/authcenter/ui/aq;-><init>(Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Lcom/alipay/mobile/clientsecurity/R$string;->M:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/alipay/mobile/security/authcenter/ui/ar;

    invoke-direct {v6, p0, p1}, Lcom/alipay/mobile/security/authcenter/ui/ar;-><init>(Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;Lcom/alipay/mobileapp/biz/rpc/register/vo/VerifyCheckRes;)V

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    :cond_3
    const-string/jumbo v0, "TAOBAO_Q"

    invoke-virtual {p1}, Lcom/alipay/mobileapp/biz/rpc/register/vo/VerifyCheckRes;->getUserStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->cO:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->c:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/alipay/mobile/clientsecurity/R$string;->Q:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alipay/mobile/security/authcenter/ui/as;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/security/authcenter/ui/as;-><init>(Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Lcom/alipay/mobile/clientsecurity/R$string;->M:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/alipay/mobile/security/authcenter/ui/at;

    invoke-direct {v6, p0}, Lcom/alipay/mobile/security/authcenter/ui/at;-><init>(Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;)V

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    :cond_4
    const/16 v0, 0x1e

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->b(I)V

    goto/16 :goto_0

    :cond_5
    const/16 v1, 0x464

    if-eq v0, v1, :cond_6

    const/16 v1, 0x450

    if-ne v0, v1, :cond_7

    :cond_6
    const/16 v0, 0x1e

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->b(I)V

    goto/16 :goto_0

    :cond_7
    const/16 v1, 0x3eb

    if-ne v0, v1, :cond_8

    const/16 v0, 0x1e

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->b(I)V

    goto/16 :goto_0

    :cond_8
    const/16 v1, 0x455

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->g:Lcom/alipay/mobile/framework/service/ext/security/SmsCheckResultCallBack;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->g:Lcom/alipay/mobile/framework/service/ext/security/SmsCheckResultCallBack;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/SmsCheckResultCallBack;->a(Z)V

    :cond_9
    iget-object v0, p1, Lcom/alipay/mobileapp/biz/rpc/register/vo/VerifyCheckRes;->memo:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->toast(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_a
    const/16 v1, 0x452

    if-ne v0, v1, :cond_c

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->g:Lcom/alipay/mobile/framework/service/ext/security/SmsCheckResultCallBack;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->g:Lcom/alipay/mobile/framework/service/ext/security/SmsCheckResultCallBack;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/SmsCheckResultCallBack;->a(Z)V

    :cond_b
    iget-object v0, p1, Lcom/alipay/mobileapp/biz/rpc/register/vo/VerifyCheckRes;->memo:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->toast(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_c
    const/16 v1, 0x453

    if-ne v0, v1, :cond_e

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->g:Lcom/alipay/mobile/framework/service/ext/security/SmsCheckResultCallBack;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->g:Lcom/alipay/mobile/framework/service/ext/security/SmsCheckResultCallBack;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/SmsCheckResultCallBack;->a(Z)V

    :cond_d
    iget-object v0, p1, Lcom/alipay/mobileapp/biz/rpc/register/vo/VerifyCheckRes;->memo:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->toast(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_e
    const/16 v1, 0x462

    if-ne v0, v1, :cond_10

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->g:Lcom/alipay/mobile/framework/service/ext/security/SmsCheckResultCallBack;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->g:Lcom/alipay/mobile/framework/service/ext/security/SmsCheckResultCallBack;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/SmsCheckResultCallBack;->a(Z)V

    :cond_f
    iget-object v0, p1, Lcom/alipay/mobileapp/biz/rpc/register/vo/VerifyCheckRes;->memo:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->toast(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_10
    iget-object v0, p1, Lcom/alipay/mobileapp/biz/rpc/register/vo/VerifyCheckRes;->memo:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->toast(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_11
    const/4 v0, 0x2

    if-ne p2, v0, :cond_15

    instance-of v0, p1, Lcom/alipay/mobileapp/biz/rpc/register/vo/SendSmsCodeRes;

    if-eqz v0, :cond_15

    sget-object v0, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->a:Ljava/lang/String;

    check-cast p1, Lcom/alipay/mobileapp/biz/rpc/register/vo/SendSmsCodeRes;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->dismissProgressDialog()V

    if-nez p1, :cond_12

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/clientsecurity/R$string;->bW:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->toast(Ljava/lang/String;I)V

    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->g:Lcom/alipay/mobile/framework/service/ext/security/SmsCheckResultCallBack;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/SmsCheckResultCallBack;->b(Z)V

    goto/16 :goto_0

    :cond_12
    iget v0, p1, Lcom/alipay/mobileapp/biz/rpc/register/vo/SendSmsCodeRes;->resultStatus:I

    if-ne v0, v1, :cond_13

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->g:Lcom/alipay/mobile/framework/service/ext/security/SmsCheckResultCallBack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->g:Lcom/alipay/mobile/framework/service/ext/security/SmsCheckResultCallBack;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/SmsCheckResultCallBack;->a(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->g:Lcom/alipay/mobile/framework/service/ext/security/SmsCheckResultCallBack;

    invoke-interface {v0}, Lcom/alipay/mobile/framework/service/ext/security/SmsCheckResultCallBack;->a()V

    goto/16 :goto_0

    :cond_13
    const/16 v1, 0x453

    if-ne v0, v1, :cond_14

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/alipay/mobileapp/biz/rpc/register/vo/SendSmsCodeRes;->memo:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/alipay/mobile/clientsecurity/R$string;->cx:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alipay/mobile/security/authcenter/ui/al;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/security/authcenter/ui/al;-><init>(Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_1

    :cond_14
    iget-object v0, p1, Lcom/alipay/mobileapp/biz/rpc/register/vo/SendSmsCodeRes;->memo:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->toast(Ljava/lang/String;I)V

    goto :goto_1

    :cond_15
    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/clientsecurity/R$string;->bW:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->toast(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public final a(Ljava/lang/Object;Lcom/alipay/mobile/framework/service/ext/security/PwdHistoryClearCallBack;)V
    .locals 11

    const/4 v5, 0x0

    const/4 v2, 0x1

    iput-object p2, p0, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->h:Lcom/alipay/mobile/framework/service/ext/security/PwdHistoryClearCallBack;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->dismissProgressDialog()V

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/alipay/mobileapp/biz/rpc/register/vo/SetMobilePayPwdRes;

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/clientsecurity/R$string;->bW:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->toast(Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_1
    check-cast p1, Lcom/alipay/mobileapp/biz/rpc/register/vo/SetMobilePayPwdRes;

    iget v0, p1, Lcom/alipay/mobileapp/biz/rpc/register/vo/SetMobilePayPwdRes;->resultStatus:I

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/clientsecurity/R$string;->cM:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->cN:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/alipay/mobile/clientsecurity/R$string;->cJ:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alipay/mobile/security/authcenter/ui/an;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/security/authcenter/ui/an;-><init>(Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;)V

    move-object v0, p0

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    :cond_2
    const/16 v1, 0x44f

    if-ne v0, v1, :cond_3

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->n:Ljava/lang/String;

    iget-object v6, p1, Lcom/alipay/mobileapp/biz/rpc/register/vo/SetMobilePayPwdRes;->memo:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/clientsecurity/R$string;->Q:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/alipay/mobile/security/authcenter/ui/ao;

    invoke-direct {v8, p0}, Lcom/alipay/mobile/security/authcenter/ui/ao;-><init>(Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/clientsecurity/R$string;->M:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/alipay/mobile/security/authcenter/ui/ap;

    invoke-direct {v10, p0, p1}, Lcom/alipay/mobile/security/authcenter/ui/ap;-><init>(Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;Lcom/alipay/mobileapp/biz/rpc/register/vo/SetMobilePayPwdRes;)V

    move-object v4, p0

    invoke-virtual/range {v4 .. v10}, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    :cond_3
    const/16 v1, 0x451

    if-ne v0, v1, :cond_4

    iget-object v0, p1, Lcom/alipay/mobileapp/biz/rpc/register/vo/SetMobilePayPwdRes;->memo:Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->toast(Ljava/lang/String;I)V

    goto :goto_0

    :cond_4
    iget-object v0, p1, Lcom/alipay/mobileapp/biz/rpc/register/vo/SetMobilePayPwdRes;->memo:Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->toast(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->h:Lcom/alipay/mobile/framework/service/ext/security/PwdHistoryClearCallBack;

    invoke-interface {v0}, Lcom/alipay/mobile/framework/service/ext/security/PwdHistoryClearCallBack;->a()V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->c:Ljava/lang/String;

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final b(I)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->a(Landroid/support/v4/app/Fragment;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/16 v3, 0x1e

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/alipay/mobile/security/authcenter/a/f;

    invoke-direct {v0}, Lcom/alipay/mobile/security/authcenter/a/f;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->j:Lcom/alipay/mobile/security/authcenter/a/f;

    const-string/jumbo v0, "down_input"

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->m:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->l:Z

    invoke-direct {p0}, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->c()V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "registerSource"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    :cond_0
    const-string/jumbo v0, "registerFromCommon"

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->i:Ljava/lang/String;

    :cond_1
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->b(I)V

    :goto_0
    return-void

    :cond_2
    const-string/jumbo v1, "registerSource"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->i:Ljava/lang/String;

    const-string/jumbo v1, "registerId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->k:Ljava/lang/String;

    const-string/jumbo v1, "registbindtype"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->l:Z

    const-string/jumbo v1, "registerFromPack"

    iget-object v2, p0, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "registerFromWap"

    iget-object v2, p0, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    const-string/jumbo v0, "registerFromPack"

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->i:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->l:Z

    invoke-virtual {p0, v3}, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->b(I)V

    goto :goto_0

    :cond_4
    const-string/jumbo v1, "registerFromLogin"

    iget-object v2, p0, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "registerMobileNum"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->c:Ljava/lang/String;

    const-string/jumbo v0, "registerFromLogin"

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->i:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->b(I)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_5

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->o:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->o:Landroid/support/v4/app/Fragment;

    instance-of v0, v0, Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment_;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->o:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->o:Landroid/support/v4/app/Fragment;

    check-cast v0, Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment_;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment_;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v7

    :goto_0
    return v0

    :cond_0
    const-string/jumbo v0, "registerFromPack"

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "registerFromWap"

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->p:Z

    if-eqz v0, :cond_2

    sget v0, Lcom/alipay/mobile/clientsecurity/R$string;->ah:I

    invoke-static {p0, v0, v3}, Lcom/alipay/mobile/common/widget/SimpleToast;->makeToast(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    const/16 v1, 0x51

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v3, v2}, Landroid/widget/Toast;->setGravity(III)V

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iput-boolean v3, p0, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->p:Z

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/security/authcenter/ui/au;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/authcenter/ui/au;-><init>(Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    move v0, v7

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->exit()V

    :cond_3
    invoke-direct {p0}, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->c()V

    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->o:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->o:Landroid/support/v4/app/Fragment;

    instance-of v0, v0, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment_;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->o:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v1, ""

    const-string/jumbo v2, "\u6821\u9a8c\u7801\u77ed\u4fe1\u53ef\u80fd\u7565\u6709\u5ef6\u8fdf\uff0c\u8bf7\u7a0d\u7b49\u3002"

    const-string/jumbo v3, "\u4e0d\u4e86"

    new-instance v4, Lcom/alipay/mobile/security/authcenter/ui/am;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/security/authcenter/ui/am;-><init>(Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Lcom/alipay/mobile/clientsecurity/R$string;->ac:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    move v0, v7

    goto/16 :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->c()V

    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_0
.end method
