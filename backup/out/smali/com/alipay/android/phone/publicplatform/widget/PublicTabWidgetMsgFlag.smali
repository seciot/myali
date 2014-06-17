.class public Lcom/alipay/android/phone/publicplatform/widget/PublicTabWidgetMsgFlag;
.super Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;
.source "PublicTabWidgetMsgFlag.java"


# instance fields
.field private a:Lcom/alipay/android/phone/publicplatform/widget/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;-><init>(Landroid/content/Context;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    return-void
.end method


# virtual methods
.method protected calculateMsgCount(III)I
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/alipay/android/phone/publicplatform/widget/PublicTabWidgetMsgFlag;->a:Lcom/alipay/android/phone/publicplatform/widget/a;

    if-eqz v0, :cond_1

    .line 44
    iget-object v0, p0, Lcom/alipay/android/phone/publicplatform/widget/PublicTabWidgetMsgFlag;->a:Lcom/alipay/android/phone/publicplatform/widget/a;

    invoke-interface {v0}, Lcom/alipay/android/phone/publicplatform/widget/a;->a()Lcom/alipay/android/phone/publicplatform/main/model/MsgCountModel;

    move-result-object v1

    .line 47
    invoke-virtual {v1}, Lcom/alipay/android/phone/publicplatform/main/model/MsgCountModel;->getTyle()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const-string/jumbo v0, "num"

    :goto_0
    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/publicplatform/widget/PublicTabWidgetMsgFlag;->setMsgStyle(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v1}, Lcom/alipay/android/phone/publicplatform/main/model/MsgCountModel;->getCount()I

    move-result v0

    .line 51
    :goto_1
    return v0

    .line 47
    :cond_0
    const-string/jumbo v0, "point"

    goto :goto_0

    .line 51
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->calculateMsgCount(III)I

    move-result v0

    goto :goto_1
.end method

.method public setPublicTabWidgetMsgFlagCallback(Lcom/alipay/android/phone/publicplatform/widget/a;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/alipay/android/phone/publicplatform/widget/PublicTabWidgetMsgFlag;->a:Lcom/alipay/android/phone/publicplatform/widget/a;

    .line 35
    return-void
.end method
