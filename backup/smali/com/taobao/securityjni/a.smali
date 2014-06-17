.class public final Lcom/taobao/securityjni/a;
.super Ljava/lang/Object;


# static fields
.field public static a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/taobao/securityjni/a;->a:I

    return-void
.end method

.method public static a()V
    .locals 2

    sget v0, Lcom/taobao/securityjni/a;->a:I

    if-nez v0, :cond_0

    new-instance v0, Lcom/taobao/securityjni/errorcode/SESoNotInitedError;

    const-string/jumbo v1, "So Not Inited: you must call initialize function before all security interface"

    invoke-direct {v0, v1}, Lcom/taobao/securityjni/errorcode/SESoNotInitedError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method
