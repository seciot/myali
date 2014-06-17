.class Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity$2;->a:Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity$2;->a:Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;

    invoke-static {v0}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;->e(Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/card/ExpressCardService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/card/ExpressCardService;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity$2;->a:Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;

    invoke-static {v1}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;->f(Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity$2;->a:Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/service/ext/card/ExpressCardService;->newExpressCard(Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/card/NewExpressCardCallback;)V

    return-void
.end method
