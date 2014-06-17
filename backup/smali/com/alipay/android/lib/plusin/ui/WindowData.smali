.class public abstract Lcom/alipay/android/lib/plusin/ui/WindowData;
.super Lcom/alipay/android/lib/plusin/protocol/FrameData;


# instance fields
.field private a:Z

.field private b:Z

.field private c:I


# direct methods
.method protected constructor <init>(Lcom/alipay/android/app/net/Request;Lcom/alipay/android/app/net/Response;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/alipay/android/lib/plusin/protocol/FrameData;-><init>(Lcom/alipay/android/app/net/Request;Lcom/alipay/android/app/net/Response;)V

    iput-boolean v1, p0, Lcom/alipay/android/lib/plusin/ui/WindowData;->b:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/android/lib/plusin/ui/WindowData;->c:I

    iput-boolean v1, p0, Lcom/alipay/android/lib/plusin/ui/WindowData;->a:Z

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/android/lib/plusin/ui/WindowData;->b:Z

    return-void
.end method

.method public abstract c()I
.end method

.method public abstract d()Z
.end method

.method public final l()V
    .locals 1

    iget v0, p0, Lcom/alipay/android/lib/plusin/ui/WindowData;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/android/lib/plusin/ui/WindowData;->c:I

    return-void
.end method

.method public final m()I
    .locals 1

    iget v0, p0, Lcom/alipay/android/lib/plusin/ui/WindowData;->c:I

    return v0
.end method

.method public final n()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/lib/plusin/ui/WindowData;->a:Z

    return v0
.end method

.method public final o()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/lib/plusin/ui/WindowData;->a:Z

    return-void
.end method

.method public final p()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/lib/plusin/ui/WindowData;->b:Z

    return v0
.end method
