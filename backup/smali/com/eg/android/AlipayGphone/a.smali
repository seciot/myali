.class final Lcom/eg/android/AlipayGphone/a;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/eg/android/AlipayGphone/AlipayLogin;


# direct methods
.method constructor <init>(Lcom/eg/android/AlipayGphone/AlipayLogin;)V
    .locals 0

    iput-object p1, p0, Lcom/eg/android/AlipayGphone/a;->a:Lcom/eg/android/AlipayGphone/AlipayLogin;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/eg/android/AlipayGphone/a;->a:Lcom/eg/android/AlipayGphone/AlipayLogin;

    invoke-static {v0}, Lcom/eg/android/AlipayGphone/AlipayLogin;->a(Lcom/eg/android/AlipayGphone/AlipayLogin;)Z

    iget-object v0, p0, Lcom/eg/android/AlipayGphone/a;->a:Lcom/eg/android/AlipayGphone/AlipayLogin;

    invoke-static {v0}, Lcom/eg/android/AlipayGphone/AlipayLogin;->b(Lcom/eg/android/AlipayGphone/AlipayLogin;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
