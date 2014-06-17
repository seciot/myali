.class Lcom/alipay/mobile/security/securitycommon/SecurityUtil$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/securitycommon/SecurityUtil;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/securitycommon/SecurityUtil;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/securitycommon/SecurityUtil$3;->a:Lcom/alipay/mobile/security/securitycommon/SecurityUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
