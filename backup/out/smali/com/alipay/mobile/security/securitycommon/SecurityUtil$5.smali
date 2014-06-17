.class Lcom/alipay/mobile/security/securitycommon/SecurityUtil$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/view/View$OnClickListener;

.field final synthetic b:Lcom/alipay/mobile/security/securitycommon/SecurityUtil;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/securitycommon/SecurityUtil;Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/securitycommon/SecurityUtil$5;->b:Lcom/alipay/mobile/security/securitycommon/SecurityUtil;

    iput-object p2, p0, Lcom/alipay/mobile/security/securitycommon/SecurityUtil$5;->a:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/SecurityUtil$5;->b:Lcom/alipay/mobile/security/securitycommon/SecurityUtil;

    invoke-static {v0}, Lcom/alipay/mobile/security/securitycommon/SecurityUtil;->a(Lcom/alipay/mobile/security/securitycommon/SecurityUtil;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/SecurityUtil$5;->b:Lcom/alipay/mobile/security/securitycommon/SecurityUtil;

    invoke-static {v0}, Lcom/alipay/mobile/security/securitycommon/SecurityUtil;->a(Lcom/alipay/mobile/security/securitycommon/SecurityUtil;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/SecurityUtil$5;->a:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/SecurityUtil$5;->a:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_1
    return-void
.end method
