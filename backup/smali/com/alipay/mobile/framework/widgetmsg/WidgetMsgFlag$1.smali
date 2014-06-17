.class Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag$1;->this$0:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag$1;->this$0:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

    iget-object v1, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag$1;->this$0:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

    iget v1, v1, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->mTemporaryMsgCount:I

    iget-object v2, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag$1;->this$0:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

    iget v2, v2, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->mPersistenceMsgCount:I

    iget-object v3, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag$1;->this$0:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

    iget v3, v3, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->mDescendantCount:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->calculateMsgCount(III)I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag$1;->this$0:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->setVisibility(I)V

    const-string/jumbo v0, "WidgetMsgFlag"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ackClick,id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag$1;->this$0:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

    iget-object v2, v2, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->widgetId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  view.gone"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string/jumbo v0, "WidgetMsgFlag"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ackClick,id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag$1;->this$0:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

    iget-object v2, v2, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->widgetId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  view.visible"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag$1;->this$0:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->setVisibility(I)V

    iget-object v1, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag$1;->this$0:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

    iget v1, v1, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->mMsgStyle:I

    sget v2, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->MSG_STYLE_POINT:I

    if-ne v1, v2, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag$1;->this$0:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

    #getter for: Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->d:Lcom/alipay/mobile/commonui/widget/APImageView;
    invoke-static {v0}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->access$000(Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;)Lcom/alipay/mobile/commonui/widget/APImageView;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/base/commonbiz/R$drawable;->redpoint:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag$1;->this$0:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

    #getter for: Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->e:Lcom/alipay/mobile/commonui/widget/APTextView;
    invoke-static {v0}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->access$100(Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;)Lcom/alipay/mobile/commonui/widget/APTextView;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag$1;->this$0:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->postInvalidate()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag$1;->this$0:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

    iget v1, v1, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->mMsgStyle:I

    sget v2, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->MSG_STYLE_NEW:I

    if-ne v1, v2, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag$1;->this$0:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

    #getter for: Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->e:Lcom/alipay/mobile/commonui/widget/APTextView;
    invoke-static {v0}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->access$100(Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;)Lcom/alipay/mobile/commonui/widget/APTextView;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag$1;->this$0:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

    #getter for: Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->d:Lcom/alipay/mobile/commonui/widget/APImageView;
    invoke-static {v0}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->access$000(Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;)Lcom/alipay/mobile/commonui/widget/APImageView;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/base/commonbiz/R$drawable;->msg_new_bg:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag$1;->this$0:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->setBackgroundResource(I)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag$1;->this$0:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

    iget v1, v1, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->mMsgStyle:I

    sget v2, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->MSG_STYLE_NUM:I

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag$1;->this$0:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

    iget v1, v1, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->maxCount:I

    if-le v0, v1, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag$1;->this$0:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

    #getter for: Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->e:Lcom/alipay/mobile/commonui/widget/APTextView;
    invoke-static {v0}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->access$100(Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;)Lcom/alipay/mobile/commonui/widget/APTextView;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag$1;->this$0:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

    #getter for: Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->d:Lcom/alipay/mobile/commonui/widget/APImageView;
    invoke-static {v0}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->access$000(Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;)Lcom/alipay/mobile/commonui/widget/APImageView;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/base/commonbiz/R$drawable;->msg_more_bg:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag$1;->this$0:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->setBackgroundResource(I)V

    goto :goto_1

    :cond_4
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag$1;->this$0:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

    #getter for: Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->e:Lcom/alipay/mobile/commonui/widget/APTextView;
    invoke-static {v1}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->access$100(Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;)Lcom/alipay/mobile/commonui/widget/APTextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag$1;->this$0:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

    #getter for: Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->d:Lcom/alipay/mobile/commonui/widget/APImageView;
    invoke-static {v0}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->access$000(Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;)Lcom/alipay/mobile/commonui/widget/APImageView;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/base/commonbiz/R$drawable;->msg_flag_bg:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag$1;->this$0:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->setBackgroundResource(I)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag$1;->this$0:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

    #getter for: Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->d:Lcom/alipay/mobile/commonui/widget/APImageView;
    invoke-static {v0}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->access$000(Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;)Lcom/alipay/mobile/commonui/widget/APImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag$1;->this$0:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

    sget v1, Lcom/alipay/mobile/base/commonbiz/R$drawable;->msg_txt_bg:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->setBackgroundResource(I)V

    goto/16 :goto_1
.end method
