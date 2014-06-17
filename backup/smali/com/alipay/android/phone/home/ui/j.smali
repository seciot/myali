.class final Lcom/alipay/android/phone/home/ui/j;
.super Ljava/lang/Object;
.source "HeaderAreaLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 293
    iput-object p1, p0, Lcom/alipay/android/phone/home/ui/j;->b:Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;

    iput p2, p0, Lcom/alipay/android/phone/home/ui/j;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 297
    iget v0, p0, Lcom/alipay/android/phone/home/ui/j;->a:I

    if-gtz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/j;->b:Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;

    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->a(Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;)Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->setVisibility(I)V

    .line 299
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/j;->b:Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;

    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->b(Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;)Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->setVisibility(I)V

    .line 311
    :goto_0
    return-void

    .line 300
    :cond_0
    iget v0, p0, Lcom/alipay/android/phone/home/ui/j;->a:I

    .line 301
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/j;->b:Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;

    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->a(Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;)Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

    move-result-object v0

    iget v1, p0, Lcom/alipay/android/phone/home/ui/j;->a:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->showMsgFlag(I)V

    .line 307
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/j;->b:Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;

    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->a(Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;)Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->setVisibility(I)V

    .line 308
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/j;->b:Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;

    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->b(Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;)Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

    move-result-object v0

    iget v1, p0, Lcom/alipay/android/phone/home/ui/j;->a:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->showMsgFlag(I)V

    .line 309
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/j;->b:Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;

    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->b(Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;)Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->setVisibility(I)V

    goto :goto_0
.end method
