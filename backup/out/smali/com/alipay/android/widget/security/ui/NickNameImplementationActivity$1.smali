.class Lcom/alipay/android/widget/security/ui/NickNameImplementationActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;

.field final synthetic b:Lcom/alipay/android/widget/security/ui/NickNameImplementationActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/widget/security/ui/NickNameImplementationActivity;Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/NickNameImplementationActivity$1;->b:Lcom/alipay/android/widget/security/ui/NickNameImplementationActivity;

    iput-object p2, p0, Lcom/alipay/android/widget/security/ui/NickNameImplementationActivity$1;->a:Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/NickNameImplementationActivity$1;->b:Lcom/alipay/android/widget/security/ui/NickNameImplementationActivity;

    invoke-static {v0}, Lcom/alipay/android/widget/security/ui/NickNameImplementationActivity;->a(Lcom/alipay/android/widget/security/ui/NickNameImplementationActivity;)Lcom/alipay/mobile/framework/service/ext/security/TaobaoBindingService;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/NickNameImplementationActivity$1;->a:Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/service/ext/security/TaobaoBindingService;->bindingFinish(Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;Z)V

    return-void
.end method
