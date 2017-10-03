function out1 = runHomeworkCode(in1)

fh = fopen('helper.m','w');
fprintf(fh,'function out = helper(in)\n');
code = in1.lines;
for i = 1:length(in1.lines)
    fprintf(fh,'%s;\n',code{i});
end
fprintf(fh,'end');
fclose(fh);

inputs2input = in1.inputs;
results = [];
for m = 1:length(inputs2input)
    one = {feval('helper',cell2mat(inputs2input(m)))};
    results = [results,one];
end


in1 = rmfield(in1,'lines');
in1.outputs = results;
out1 = in1;
end

