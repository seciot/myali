.class final Lcom/alipay/mobile/about/ui/x;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lcom/alipay/mobile/about/ui/w;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/about/ui/w;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/about/ui/x;->b:Lcom/alipay/mobile/about/ui/w;

    iput-object p2, p0, Lcom/alipay/mobile/about/ui/x;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/x;->b:Lcom/alipay/mobile/about/ui/w;

    iget-object v0, v0, Lcom/alipay/mobile/about/ui/w;->g:Lcom/alipay/mobile/about/ui/FeedAssistantActivity;

    iget-object v0, v0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->c:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    iget-object v1, p0, Lcom/alipay/mobile/about/ui/x;->b:Lcom/alipay/mobile/about/ui/w;

    iget v1, v1, Lcom/alipay/mobile/about/ui/w;->e:I

    iget-object v2, p0, Lcom/alipay/mobile/about/ui/x;->b:Lcom/alipay/mobile/about/ui/w;

    iget v2, v2, Lcom/alipay/mobile/about/ui/w;->c:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/alipay/mobile/about/ui/x;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/alipay/mobile/about/ui/x;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/about/ui/x;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
