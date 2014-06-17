.class final Lcom/alipay/mobile/about/ui/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/about/ui/AboutFeedbackActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/about/ui/AboutFeedbackActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/about/ui/b;->a:Lcom/alipay/mobile/about/ui/AboutFeedbackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/b;->a:Lcom/alipay/mobile/about/ui/AboutFeedbackActivity;

    invoke-static {v0}, Lcom/alipay/mobile/about/ui/AboutFeedbackActivity;->a(Lcom/alipay/mobile/about/ui/AboutFeedbackActivity;)Lcom/alipay/mobile/commonui/widget/APInputBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getInputedText()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, " "

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    if-nez p2, :cond_0

    sget-object v1, Lcom/alipay/mobile/about/ui/AboutFeedbackActivity;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/b;->a:Lcom/alipay/mobile/about/ui/AboutFeedbackActivity;

    invoke-static {v0}, Lcom/alipay/mobile/about/ui/AboutFeedbackActivity;->b(Lcom/alipay/mobile/about/ui/AboutFeedbackActivity;)V

    :cond_0
    return-void
.end method
