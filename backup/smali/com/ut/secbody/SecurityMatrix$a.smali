.class final Lcom/ut/secbody/SecurityMatrix$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Landroid/content/ContextWrapper;


# direct methods
.method public constructor <init>(Landroid/content/ContextWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ut/secbody/SecurityMatrix$a;->a:Landroid/content/ContextWrapper;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/ut/secbody/SecurityMatrix$a;->a:Landroid/content/ContextWrapper;

    invoke-static {v0}, Lcom/ut/secbody/SecurityMatrix;->a(Landroid/content/ContextWrapper;)V

    return-void
.end method
