.class Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity$3;->a:Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
