.class final Lcom/eg/android/AlipayGphone/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/eg/android/AlipayGphone/AlipayLogin;


# direct methods
.method constructor <init>(Lcom/eg/android/AlipayGphone/AlipayLogin;)V
    .locals 0

    iput-object p1, p0, Lcom/eg/android/AlipayGphone/b;->a:Lcom/eg/android/AlipayGphone/AlipayLogin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/eg/android/AlipayGphone/b;->a:Lcom/eg/android/AlipayGphone/AlipayLogin;

    invoke-static {v0}, Lcom/eg/android/AlipayGphone/AlipayLogin;->c(Lcom/eg/android/AlipayGphone/AlipayLogin;)V

    iget-object v0, p0, Lcom/eg/android/AlipayGphone/b;->a:Lcom/eg/android/AlipayGphone/AlipayLogin;

    invoke-static {v0}, Lcom/eg/android/AlipayGphone/AlipayLogin;->b(Lcom/eg/android/AlipayGphone/AlipayLogin;)V

    return-void
.end method
