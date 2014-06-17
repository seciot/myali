.class Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$CameraCallback;


# instance fields
.field final synthetic a:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$2;->a:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$2;->a:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;

    const-string/jumbo v2, "\u76f8\u673a\u6253\u5f00\u5931\u8d25"

    iget-object v3, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$2;->a:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;

    sget v4, Lcom/alipay/mobile/clientsecurity/R$string;->af:I

    invoke-virtual {v3, v4}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$2$1;

    invoke-direct {v4, p0}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$2$1;-><init>(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$2;)V

    move-object v5, v1

    move-object v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method
