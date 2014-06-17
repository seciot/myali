.class final Lcom/alipay/mobile/alipassapp/ui/common/aa;
.super Lcom/androidquery/callback/BitmapAjaxCallback;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/alipassapp/ui/common/z;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/alipassapp/ui/common/z;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/common/aa;->a:Lcom/alipay/mobile/alipassapp/ui/common/z;

    invoke-direct {p0}, Lcom/androidquery/callback/BitmapAjaxCallback;-><init>()V

    return-void
.end method


# virtual methods
.method protected final callback(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Lcom/androidquery/callback/AjaxStatus;)V
    .locals 2

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/aa;->a:Lcom/alipay/mobile/alipassapp/ui/common/z;

    iget-object v0, v0, Lcom/alipay/mobile/alipassapp/ui/common/z;->b:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, p3}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/aa;->a:Lcom/alipay/mobile/alipassapp/ui/common/z;

    iget-object v0, v0, Lcom/alipay/mobile/alipassapp/ui/common/z;->c:Lcom/alipay/mobile/commonui/widget/APImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/aa;->a:Lcom/alipay/mobile/alipassapp/ui/common/z;

    iget-object v0, v0, Lcom/alipay/mobile/alipassapp/ui/common/z;->b:Lcom/alipay/mobile/commonui/widget/APImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method
