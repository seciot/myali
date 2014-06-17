.class final Lcom/alipay/mobile/mobilerechargeapp/view/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/mobilerechargeapp/view/b;->a:Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/view/b;->a:Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;

    #getter for: Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;->mInputContent:Lcom/alipay/mobile/commonui/widget/APEditText;
    invoke-static {v0}, Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;->access$000(Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;)Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APEditText;->hasFocus()Z

    const/4 v0, 0x0

    return v0
.end method
