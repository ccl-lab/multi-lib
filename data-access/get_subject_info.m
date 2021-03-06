function [ subj_info ] = get_subject_info( sid )
%Return the Subj_id, Exper. #, date, and kid_id of a subj.
%   get_subject_info(SUBJECT_ID)
%       Given a subject ID (a small integer, usually 1-100 or so), returns a
%       one-row array with the subject ID, the experiment number, the date of
%       the subject's experiment (in YYYYMMDD form, as a number), and the
%       kid_id of the subject.

table = read_subject_table();

% return only the line of the table that has the first field (the subject
% ID) equal to the search query's subject ID.
subj_info = func_filter(@(subject) subject(1) == sid, table);

end
