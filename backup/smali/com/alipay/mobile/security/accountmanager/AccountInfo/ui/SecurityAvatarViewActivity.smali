.class public Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAvatarViewActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;

# interfaces
.implements Lcom/alipay/mobile/framework/service/common/ImageLoaderListener;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
.end annotation


# instance fields
.field a:Lcom/alipay/mobile/commonui/widget/APImageView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "image_icon_view"
    .end annotation
.end field

.field private b:Lcom/alipay/mobile/framework/service/common/ImageLoaderService;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/graphics/Bitmap;)V
    .locals 3
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAvatarViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAvatarViewActivity;->a:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAvatarViewActivity;->a:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAvatarViewActivity;->a:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 7
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    const/4 v5, -0x1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAvatarViewActivity;->b:Lcom/alipay/mobile/framework/service/common/ImageLoaderService;

    invoke-static {}, Lcom/alipay/mobile/common/helper/UserInfoHelper;->getInstance()Lcom/alipay/mobile/common/helper/UserInfoHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAvatarViewActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/helper/UserInfoHelper;->getUserInfo(Lcom/alipay/mobile/framework/app/ActivityApplication;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, p1

    move-object v4, p0

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/framework/service/common/ImageLoaderService;->startLoad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/framework/service/common/ImageLoaderListener;II)V

    return-void
.end method

.method public onCancelled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/alipay/mobile/clientsecurity/R$layout;->ao:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAvatarViewActivity;->setContentView(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAvatarViewActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    const-class v1, Lcom/alipay/mobile/framework/service/common/ImageLoaderService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/ImageLoaderService;

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAvatarViewActivity;->b:Lcom/alipay/mobile/framework/service/common/ImageLoaderService;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAvatarViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "imageUrl"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAvatarViewActivity;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAvatarViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAvatarViewActivity;->a:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAvatarViewActivity;->a:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAvatarViewActivity;->a:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v1, Lcom/alipay/mobile/clientsecurity/R$drawable;->x:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public onFailed(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onPostLoad(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-virtual {p0, p2}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAvatarViewActivity;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onPreLoad(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onProgressUpdate(Ljava/lang/String;D)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAvatarViewActivity;->finish()V

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method
