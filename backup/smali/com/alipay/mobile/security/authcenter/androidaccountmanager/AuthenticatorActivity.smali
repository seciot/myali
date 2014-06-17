.class public Lcom/alipay/mobile/security/authcenter/androidaccountmanager/AuthenticatorActivity;
.super Landroid/accounts/AccountAuthenticatorActivity;


# instance fields
.field protected a:Z

.field private b:Landroid/app/ProgressDialog;

.field private c:Ljava/lang/Boolean;

.field private final d:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/accounts/AccountAuthenticatorActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/androidaccountmanager/AuthenticatorActivity;->b:Landroid/app/ProgressDialog;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/androidaccountmanager/AuthenticatorActivity;->c:Ljava/lang/Boolean;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/androidaccountmanager/AuthenticatorActivity;->d:Landroid/os/Handler;

    iput-boolean v1, p0, Lcom/alipay/mobile/security/authcenter/androidaccountmanager/AuthenticatorActivity;->a:Z

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method
