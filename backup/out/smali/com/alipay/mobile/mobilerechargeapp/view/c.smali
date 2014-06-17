.class final Lcom/alipay/mobile/mobilerechargeapp/view/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/mobilerechargeapp/view/c;->a:Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/view/c;->a:Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;

    #getter for: Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;->mInputContent:Lcom/alipay/mobile/commonui/widget/APEditText;
    invoke-static {v0}, Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;->access$000(Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;)Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/view/c;->a:Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;

    #getter for: Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;->m_right_text:Lcom/alipay/mobile/commonui/widget/APTextView;
    invoke-static {v0}, Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;->access$200(Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;)Lcom/alipay/mobile/commonui/widget/APTextView;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/view/c;->a:Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;

    #getter for: Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;->mClearButton:Lcom/alipay/mobile/commonui/widget/APImageButton;
    invoke-static {v0}, Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;->access$300(Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;)Lcom/alipay/mobile/commonui/widget/APImageButton;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/view/c;->a:Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;

    #getter for: Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;->mCleanButtonListener:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;->access$400(Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/view/c;->a:Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;

    #getter for: Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;->mCleanButtonListener:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;->access$400(Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;)Landroid/view/View$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/view/c;->a:Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;

    #getter for: Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;->mClearButton:Lcom/alipay/mobile/commonui/widget/APImageButton;
    invoke-static {v1}, Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;->access$300(Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;)Lcom/alipay/mobile/commonui/widget/APImageButton;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method
