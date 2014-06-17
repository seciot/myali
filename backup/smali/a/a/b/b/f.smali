.class final La/a/b/b/f;
.super La/a/b/b/a;

# interfaces
.implements La/a/a/a/c;


# instance fields
.field d:Ljava/lang/Class;


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, La/a/b/b/a;-><init>(ILjava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object p7, p0, La/a/b/b/f;->d:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method protected final a(La/a/b/b/k;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget v1, p0, La/a/b/b/g;->e:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, La/a/b/b/g;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, La/a/b/b/g;->e:I

    :cond_0
    iget v1, p0, La/a/b/b/g;->e:I

    invoke-virtual {p1, v1}, La/a/b/b/k;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v1, p1, La/a/b/b/k;->b:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, La/a/b/b/f;->d:Ljava/lang/Class;

    if-nez v1, :cond_1

    const/4 v1, 0x6

    invoke-virtual {p0, v1}, La/a/b/b/g;->b(I)Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, La/a/b/b/f;->d:Ljava/lang/Class;

    :cond_1
    iget-object v1, p0, La/a/b/b/f;->d:Ljava/lang/Class;

    invoke-virtual {p1, v1}, La/a/b/b/k;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    iget-boolean v1, p1, La/a/b/b/k;->b:Z

    if-eqz v1, :cond_3

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    invoke-virtual {p0}, La/a/b/b/g;->a()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, La/a/b/b/g;->g:Ljava/lang/String;

    if-nez v2, :cond_4

    invoke-virtual {p0}, La/a/b/b/g;->a()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, La/a/b/b/g;->g:Ljava/lang/String;

    :cond_4
    iget-object v2, p0, La/a/b/b/g;->g:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, La/a/b/b/k;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, La/a/b/b/g;->f:Ljava/lang/String;

    if-nez v1, :cond_5

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, La/a/b/b/g;->a(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, La/a/b/b/g;->f:Ljava/lang/String;

    :cond_5
    iget-object v1, p0, La/a/b/b/g;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, La/a/b/b/a;->a:[Ljava/lang/Class;

    if-nez v1, :cond_6

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, La/a/b/b/g;->c(I)[Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, La/a/b/b/a;->a:[Ljava/lang/Class;

    :cond_6
    iget-object v1, p0, La/a/b/b/a;->a:[Ljava/lang/Class;

    invoke-virtual {p1, v0, v1}, La/a/b/b/k;->a(Ljava/lang/StringBuffer;[Ljava/lang/Class;)V

    iget-object v1, p0, La/a/b/b/a;->c:[Ljava/lang/Class;

    if-nez v1, :cond_7

    const/4 v1, 0x5

    invoke-virtual {p0, v1}, La/a/b/b/g;->c(I)[Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, La/a/b/b/a;->c:[Ljava/lang/Class;

    :cond_7
    iget-object v1, p0, La/a/b/b/a;->c:[Ljava/lang/Class;

    invoke-virtual {p1, v0, v1}, La/a/b/b/k;->b(Ljava/lang/StringBuffer;[Ljava/lang/Class;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
