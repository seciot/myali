.class final Lcom/alipay/mobile/alipassapp/ui/common/w;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lcom/alipay/mobile/alipassapp/ui/common/v;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/alipassapp/ui/common/v;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/common/w;->b:Lcom/alipay/mobile/alipassapp/ui/common/v;

    iput-object p2, p0, Lcom/alipay/mobile/alipassapp/ui/common/w;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->access$800()Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/w;->b:Lcom/alipay/mobile/alipassapp/ui/common/v;

    iget-object v0, v0, Lcom/alipay/mobile/alipassapp/ui/common/v;->c:Lcom/alipay/mobile/commonui/widget/APImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/w;->b:Lcom/alipay/mobile/alipassapp/ui/common/v;

    iget-object v0, v0, Lcom/alipay/mobile/alipassapp/ui/common/v;->c:Lcom/alipay/mobile/commonui/widget/APImageView;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/common/w;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/w;->b:Lcom/alipay/mobile/alipassapp/ui/common/v;

    iget-object v0, v0, Lcom/alipay/mobile/alipassapp/ui/common/v;->c:Lcom/alipay/mobile/commonui/widget/APImageView;

    new-instance v1, Lcom/alipay/mobile/alipassapp/ui/common/x;

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/common/w;->b:Lcom/alipay/mobile/alipassapp/ui/common/v;

    iget-object v2, v2, Lcom/alipay/mobile/alipassapp/ui/common/v;->d:Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;

    #getter for: Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->access$900(Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/alipay/mobile/alipassapp/ui/common/x;-><init>(Lcom/alipay/mobile/alipassapp/ui/common/w;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
