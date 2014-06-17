.class Lcom/alipay/mobile/common/media/AlipayVoiceRecorder$3;
.super Landroid/telephony/PhoneStateListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder$3;->this$0:Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Call state changed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    packed-switch p1, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder$3;->this$0:Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;

    #setter for: Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;->g:Z
    invoke-static {v0, v2}, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;->access$302(Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;Z)Z

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder$3;->this$0:Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;

    const/4 v1, 0x0

    #setter for: Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;->g:Z
    invoke-static {v0, v1}, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;->access$302(Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;Z)Z

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder$3;->this$0:Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;

    #setter for: Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;->g:Z
    invoke-static {v0, v2}, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;->access$302(Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;Z)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
