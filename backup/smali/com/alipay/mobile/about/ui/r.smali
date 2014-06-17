.class final Lcom/alipay/mobile/about/ui/r;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/about/ui/FeedAssistantActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/about/ui/FeedAssistantActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/about/ui/r;->a:Lcom/alipay/mobile/about/ui/FeedAssistantActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    iget-object v1, p0, Lcom/alipay/mobile/about/ui/r;->a:Lcom/alipay/mobile/about/ui/FeedAssistantActivity;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->b(Lcom/alipay/mobile/about/ui/FeedAssistantActivity;Z)Z

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/r;->a:Lcom/alipay/mobile/about/ui/FeedAssistantActivity;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->a(Lcom/alipay/mobile/about/ui/FeedAssistantActivity;I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
