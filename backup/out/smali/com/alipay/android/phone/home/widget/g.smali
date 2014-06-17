.class final Lcom/alipay/android/phone/home/widget/g;
.super Ljava/lang/Object;
.source "HomeWidgetGroup.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/alipay/android/phone/home/widget/g;->a:Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/g;->a:Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->showGuideOnUiThread()V

    .line 76
    return-void
.end method
