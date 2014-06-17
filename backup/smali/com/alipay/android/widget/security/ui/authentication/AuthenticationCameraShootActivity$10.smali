.class Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$10;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/android/widget/security/ui/authentication/AuthenticationSaveImageHelper$SaveImageResultCallback;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;I)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$10;->b:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;

    iput p2, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$10;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ZLjava/lang/String;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "save photo result: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " path: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$10;->b:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;

    invoke-static {v0}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->j(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;)[Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$10;->a:I

    aput-object p2, v0, v1

    iget v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$10;->a:I

    if-ne v3, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "imag0:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$10;->b:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;

    invoke-static {v1}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->j(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " imag1:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$10;->b:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;

    invoke-static {v1}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->j(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$10;->b:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;

    const-class v2, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationUploadIdInfoActivity_;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "idImageFiles"

    iget-object v3, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$10;->b:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;

    invoke-static {v3}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->j(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$10;->b:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;

    invoke-static {v1}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->l(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;)Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$10;->b:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;

    invoke-static {v2}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->k(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$10;->b:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;

    invoke-virtual {v0}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$10;->b:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;

    const-string/jumbo v1, "\u56fe\u7247\u4fdd\u5b58\u5931\u8d25"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->toast(Ljava/lang/String;I)V

    goto :goto_0
.end method
