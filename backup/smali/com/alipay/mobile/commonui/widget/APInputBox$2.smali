.class Lcom/alipay/mobile/commonui/widget/APInputBox$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/commonui/widget/APInputBox;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/commonui/widget/APInputBox;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/APInputBox$2;->this$0:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APInputBox$2;->this$0:Lcom/alipay/mobile/commonui/widget/APInputBox;

    #getter for: Lcom/alipay/mobile/commonui/widget/APInputBox;->a:Lcom/alipay/mobile/commonui/widget/APEditText;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->access$000(Lcom/alipay/mobile/commonui/widget/APInputBox;)Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APEditText;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APInputBox$2;->this$0:Lcom/alipay/mobile/commonui/widget/APInputBox;

    #getter for: Lcom/alipay/mobile/commonui/widget/APInputBox;->a:Lcom/alipay/mobile/commonui/widget/APEditText;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->access$000(Lcom/alipay/mobile/commonui/widget/APInputBox;)Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APEditText;->requestFocus()Z

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
