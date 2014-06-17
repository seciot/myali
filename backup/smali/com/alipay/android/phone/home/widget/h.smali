.class final Lcom/alipay/android/phone/home/widget/h;
.super Ljava/lang/Object;
.source "HomeWidgetGroup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;)V
    .locals 0
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/alipay/android/phone/home/widget/h;->a:Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 116
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/h;->a:Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;

    #getter for: Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->newUserGuide:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->access$000(Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/h;->a:Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;

    #getter for: Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->newUserGuide:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->access$000(Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 118
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/h;->a:Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;

    const/4 v1, 0x0

    #setter for: Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->newUserGuide:Landroid/widget/PopupWindow;
    invoke-static {v0, v1}, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->access$002(Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;

    .line 120
    :cond_0
    return-void
.end method
