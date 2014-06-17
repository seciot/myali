.class final Lcom/alipay/mobile/about/ui/v;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/about/ui/u;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/about/ui/u;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/about/ui/v;->a:Lcom/alipay/mobile/about/ui/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alipay/mobile/about/ui/v;->a:Lcom/alipay/mobile/about/ui/u;

    iget-object v2, v1, Lcom/alipay/mobile/about/ui/u;->b:[Ljava/io/File;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    iget-object v5, p0, Lcom/alipay/mobile/about/ui/v;->a:Lcom/alipay/mobile/about/ui/u;

    iget-object v5, v5, Lcom/alipay/mobile/about/ui/u;->d:Lcom/alipay/mobile/about/ui/FeedAssistantActivity;

    iget-object v5, v5, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->h:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/about/ui/v;->a:Lcom/alipay/mobile/about/ui/u;

    iget-object v1, v1, Lcom/alipay/mobile/about/ui/u;->c:[Landroid/graphics/Bitmap;

    array-length v2, v1

    :goto_1
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    iget-object v4, p0, Lcom/alipay/mobile/about/ui/v;->a:Lcom/alipay/mobile/about/ui/u;

    iget-object v4, v4, Lcom/alipay/mobile/about/ui/u;->d:Lcom/alipay/mobile/about/ui/FeedAssistantActivity;

    invoke-static {v4}, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->e(Lcom/alipay/mobile/about/ui/FeedAssistantActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/about/ui/v;->a:Lcom/alipay/mobile/about/ui/u;

    iget-object v0, v0, Lcom/alipay/mobile/about/ui/u;->d:Lcom/alipay/mobile/about/ui/FeedAssistantActivity;

    invoke-static {v0}, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->f(Lcom/alipay/mobile/about/ui/FeedAssistantActivity;)V

    return-void
.end method
