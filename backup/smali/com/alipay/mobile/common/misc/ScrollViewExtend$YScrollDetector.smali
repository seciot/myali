.class Lcom/alipay/mobile/common/misc/ScrollViewExtend$YScrollDetector;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/misc/ScrollViewExtend;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/misc/ScrollViewExtend;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/misc/ScrollViewExtend$YScrollDetector;->this$0:Lcom/alipay/mobile/common/misc/ScrollViewExtend;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/common/misc/ScrollViewExtend$YScrollDetector;->this$0:Lcom/alipay/mobile/common/misc/ScrollViewExtend;

    #getter for: Lcom/alipay/mobile/common/misc/ScrollViewExtend;->a:Z
    invoke-static {v0}, Lcom/alipay/mobile/common/misc/ScrollViewExtend;->access$000(Lcom/alipay/mobile/common/misc/ScrollViewExtend;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/common/misc/ScrollViewExtend$YScrollDetector;->this$0:Lcom/alipay/mobile/common/misc/ScrollViewExtend;

    const/4 v1, 0x1

    #setter for: Lcom/alipay/mobile/common/misc/ScrollViewExtend;->a:Z
    invoke-static {v0, v1}, Lcom/alipay/mobile/common/misc/ScrollViewExtend;->access$002(Lcom/alipay/mobile/common/misc/ScrollViewExtend;Z)Z

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/common/misc/ScrollViewExtend$YScrollDetector;->this$0:Lcom/alipay/mobile/common/misc/ScrollViewExtend;

    #getter for: Lcom/alipay/mobile/common/misc/ScrollViewExtend;->a:Z
    invoke-static {v0}, Lcom/alipay/mobile/common/misc/ScrollViewExtend;->access$000(Lcom/alipay/mobile/common/misc/ScrollViewExtend;)Z

    move-result v0

    return v0

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/misc/ScrollViewExtend$YScrollDetector;->this$0:Lcom/alipay/mobile/common/misc/ScrollViewExtend;

    const/4 v1, 0x0

    #setter for: Lcom/alipay/mobile/common/misc/ScrollViewExtend;->a:Z
    invoke-static {v0, v1}, Lcom/alipay/mobile/common/misc/ScrollViewExtend;->access$002(Lcom/alipay/mobile/common/misc/ScrollViewExtend;Z)Z

    goto :goto_0
.end method
