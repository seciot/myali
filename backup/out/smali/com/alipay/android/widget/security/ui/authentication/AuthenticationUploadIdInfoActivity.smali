.class public Lcom/alipay/android/widget/security/ui/authentication/AuthenticationUploadIdInfoActivity;
.super Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationActivity;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
    resName = "authentication_upload_container"
.end annotation


# instance fields
.field private c:Landroid/support/v4/app/FragmentManager;

.field private d:Landroid/support/v4/app/Fragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/AfterViews;
    .end annotation

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationUploadIdInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationUploadIdInfoActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationUploadIdInfoActivity;->c:Landroid/support/v4/app/FragmentManager;

    new-instance v1, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment_;

    invoke-direct {v1}, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment_;-><init>()V

    invoke-virtual {v1, v0}, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment_;->setArguments(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationUploadIdInfoActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v1, v0}, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment_;->a(Lcom/alipay/mobile/framework/app/ActivityApplication;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationUploadIdInfoActivity;->a(Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationFragment;Z)V

    :cond_0
    return-void
.end method

.method protected a(Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationFragment;Z)V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "fragment: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationUploadIdInfoActivity;->d:Landroid/support/v4/app/Fragment;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationUploadIdInfoActivity;->c:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/clientsecurity/R$id;->N:I

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    if-eqz p2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationUploadIdInfoActivity;->d:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationUploadIdInfoActivity;->d:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationUploadIdInfoActivity;->d:Landroid/support/v4/app/Fragment;

    instance-of v0, v0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdResultFragment_;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
