.class final Lcom/alipay/android/phone/publicplatform/home/d;
.super Ljava/lang/Object;
.source "PublicHomeWidgetGroup.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;)V
    .locals 0
    .parameter

    .prologue
    .line 268
    iput-object p1, p0, Lcom/alipay/android/phone/publicplatform/home/d;->a:Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 272
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/alipay/android/phone/publicplatform/home/d;->a:Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;

    const/4 v1, 0x1

    #setter for: Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;->n:Z
    invoke-static {v0, v1}, Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;->access$202(Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;Z)Z

    .line 274
    iget-object v0, p0, Lcom/alipay/android/phone/publicplatform/home/d;->a:Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;

    #calls: Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;->a()V
    invoke-static {v0}, Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;->access$300(Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;)V

    .line 275
    iget-object v0, p0, Lcom/alipay/android/phone/publicplatform/home/d;->a:Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;

    #getter for: Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;->q:Ljava/lang/Boolean;
    invoke-static {v0}, Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;->access$400(Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/alipay/android/phone/publicplatform/home/d;->a:Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;

    #getter for: Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;->g:Lcom/alipay/android/phone/publicplatform/widget/PublicTabWidgetMsgFlag;
    invoke-static {v0}, Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;->access$500(Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;)Lcom/alipay/android/phone/publicplatform/widget/PublicTabWidgetMsgFlag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/publicplatform/widget/PublicTabWidgetMsgFlag;->reset()V

    .line 279
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
