.class final Lcom/alipay/android/phone/publicplatform/home/f;
.super Ljava/lang/Object;
.source "PublicHomeWidgetGroup.java"

# interfaces
.implements Lcom/alipay/android/phone/publicplatform/home/widget/a;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;)V
    .locals 0
    .parameter

    .prologue
    .line 519
    iput-object p1, p0, Lcom/alipay/android/phone/publicplatform/home/f;->a:Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter

    .prologue
    .line 524
    iget-object v0, p0, Lcom/alipay/android/phone/publicplatform/home/f;->a:Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;

    #getter for: Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;->a:Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;
    invoke-static {v0}, Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;->access$700(Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;)Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/phone/publicplatform/home/f;->a:Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;

    #getter for: Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;->a:Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;
    invoke-static {v0}, Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;->access$700(Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;)Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;->operateMenuVisiable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 525
    iget-object v0, p0, Lcom/alipay/android/phone/publicplatform/home/f;->a:Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;

    #getter for: Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;->a:Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;
    invoke-static {v0}, Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;->access$700(Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;)Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;->getOperateMenuRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 527
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 530
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/publicplatform/home/f;->a:Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;

    #getter for: Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;->a:Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;
    invoke-static {v0}, Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;->access$700(Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;)Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;->hideOperateMenu()V

    .line 531
    const/4 v0, 0x1

    .line 534
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
