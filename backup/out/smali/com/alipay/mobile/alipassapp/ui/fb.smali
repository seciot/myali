.class final Lcom/alipay/mobile/alipassapp/ui/fb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lcom/alipay/mobile/alipassapp/ui/fa;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/alipassapp/ui/fa;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/fb;->b:Lcom/alipay/mobile/alipassapp/ui/fa;

    iput-object p2, p0, Lcom/alipay/mobile/alipassapp/ui/fb;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;->a()Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/fb;->b:Lcom/alipay/mobile/alipassapp/ui/fa;

    iget-object v0, v0, Lcom/alipay/mobile/alipassapp/ui/fa;->c:Lcom/alipay/mobile/commonui/widget/APImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/fb;->b:Lcom/alipay/mobile/alipassapp/ui/fa;

    iget-object v0, v0, Lcom/alipay/mobile/alipassapp/ui/fa;->c:Lcom/alipay/mobile/commonui/widget/APImageView;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/fb;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/fb;->b:Lcom/alipay/mobile/alipassapp/ui/fa;

    iget-object v0, v0, Lcom/alipay/mobile/alipassapp/ui/fa;->c:Lcom/alipay/mobile/commonui/widget/APImageView;

    new-instance v1, Lcom/alipay/mobile/alipassapp/ui/common/au;

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/fb;->b:Lcom/alipay/mobile/alipassapp/ui/fa;

    iget-object v2, v2, Lcom/alipay/mobile/alipassapp/ui/fa;->d:Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;

    invoke-static {v2}, Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;->e(Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alipay/mobile/alipassapp/ui/common/au;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
