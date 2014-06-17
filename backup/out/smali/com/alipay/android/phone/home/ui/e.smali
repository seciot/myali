.class final Lcom/alipay/android/phone/home/ui/e;
.super Ljava/lang/Object;
.source "HeaderAreaLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/alipay/android/phone/home/ui/e;->a:Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    const/16 v1, 0x8

    .line 129
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/e;->a:Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;

    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->a(Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;)Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/e;->a:Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;

    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->b(Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;)Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->setVisibility(I)V

    .line 131
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/e;->a:Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;

    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->c(Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;)V

    .line 132
    invoke-static {}, Lcom/alipay/android/phone/home/util/HomeLogAgentUtil;->a()V

    .line 133
    return-void
.end method
