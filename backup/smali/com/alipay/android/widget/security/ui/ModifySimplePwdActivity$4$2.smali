.class Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$4$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/framework/service/ext/security/PwdHistoryClearCallBack;

.field final synthetic b:Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$4;


# direct methods
.method constructor <init>(Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$4;Lcom/alipay/mobile/framework/service/ext/security/PwdHistoryClearCallBack;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$4$2;->b:Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$4;

    iput-object p2, p0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$4$2;->a:Lcom/alipay/mobile/framework/service/ext/security/PwdHistoryClearCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$4$2;->a:Lcom/alipay/mobile/framework/service/ext/security/PwdHistoryClearCallBack;

    invoke-interface {v0}, Lcom/alipay/mobile/framework/service/ext/security/PwdHistoryClearCallBack;->a()V

    return-void
.end method
