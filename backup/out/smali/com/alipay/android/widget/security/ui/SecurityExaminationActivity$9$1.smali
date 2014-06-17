.class Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity$9$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity$9;


# direct methods
.method constructor <init>(Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity$9;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity$9$1;->a:Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity$9$1;->a:Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity$9;

    iget-object v0, v0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity$9;->a:Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;

    invoke-static {v0}, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->w(Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/BindPhoneService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/BindPhoneService;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity$9$1;->a:Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity$9;

    iget-object v1, v1, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity$9;->a:Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/BindPhoneService;->bindPhone(Lcom/alipay/mobile/framework/service/ext/security/BindPhoneCallBack;)V

    return-void
.end method
