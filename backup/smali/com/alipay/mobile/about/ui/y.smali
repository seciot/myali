.class final Lcom/alipay/mobile/about/ui/y;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/about/ui/FeedAssistantActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/about/ui/FeedAssistantActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/about/ui/y;->a:Lcom/alipay/mobile/about/ui/FeedAssistantActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/alipay/mobile/about/ui/y;->a:Lcom/alipay/mobile/about/ui/FeedAssistantActivity;

    invoke-static {v1}, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->e(Lcom/alipay/mobile/about/ui/FeedAssistantActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/alipay/mobile/about/ui/y;->a:Lcom/alipay/mobile/about/ui/FeedAssistantActivity;

    invoke-static {v1, v0}, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->b(Lcom/alipay/mobile/about/ui/FeedAssistantActivity;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
