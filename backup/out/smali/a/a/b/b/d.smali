.class final La/a/b/b/d;
.super Ljava/lang/Object;

# interfaces
.implements La/a/a/b;


# instance fields
.field a:Ljava/lang/String;

.field b:La/a/a/e;

.field c:La/a/a/a/d;

.field private d:I


# direct methods
.method public constructor <init>(ILjava/lang/String;La/a/a/e;La/a/a/a/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, La/a/b/b/d;->a:Ljava/lang/String;

    iput-object p3, p0, La/a/b/b/d;->b:La/a/a/e;

    iput-object p4, p0, La/a/b/b/d;->c:La/a/a/a/d;

    iput p1, p0, La/a/b/b/d;->d:I

    return-void
.end method


# virtual methods
.method public final a()La/a/a/e;
    .locals 1

    iget-object v0, p0, La/a/b/b/d;->b:La/a/a/e;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/a/b/b/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    sget-object v1, La/a/b/b/k;->k:La/a/b/b/k;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v0, p0, La/a/b/b/d;->a:Ljava/lang/String;

    invoke-static {v0}, La/a/b/b/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v0, "("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, La/a/b/b/d;->b:La/a/a/e;

    check-cast v0, La/a/b/b/g;

    invoke-virtual {v0, v1}, La/a/b/b/g;->b(La/a/b/b/k;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
