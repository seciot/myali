.class final Lcom/alipay/mobile/alipassapp/ui/common/d;
.super Landroid/text/style/ClickableSpan;


# instance fields
.field a:Lcom/alipay/mobile/alipassapp/ui/common/a;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/alipassapp/ui/common/a;)V
    .locals 0

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/common/d;->a:Lcom/alipay/mobile/alipassapp/ui/common/a;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/d;->a:Lcom/alipay/mobile/alipassapp/ui/common/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/d;->a:Lcom/alipay/mobile/alipassapp/ui/common/a;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/alipassapp/ui/common/a;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    return-void
.end method
