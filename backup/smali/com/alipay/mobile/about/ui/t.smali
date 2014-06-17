.class final Lcom/alipay/mobile/about/ui/t;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/about/ui/FeedAssistantActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/about/ui/FeedAssistantActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/about/ui/t;->a:Lcom/alipay/mobile/about/ui/FeedAssistantActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/t;->a:Lcom/alipay/mobile/about/ui/FeedAssistantActivity;

    iget-object v0, v0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->b:Landroid/widget/HorizontalScrollView;

    iget-object v1, p0, Lcom/alipay/mobile/about/ui/t;->a:Lcom/alipay/mobile/about/ui/FeedAssistantActivity;

    iget-object v1, v1, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->c:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->getWidth()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/HorizontalScrollView;->smoothScrollBy(II)V

    return-void
.end method
